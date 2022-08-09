import express from 'express'
import fetch from 'node-fetch'
import { setInterval } from 'timers'

const app = express()
app.get('/',async(req,res)=>{
  if (req.query.url){
      re = await fetch(req.query.url)
    try{
      res.json(await re.json())
    }catch{
      res.send(await re.text())
    }
  }else{
    let er = {
  status: false
}
    res.json(er)
  }
})
setInterval(async()=>{
  await fetch(`https://${process.env['APP_NAME']}.herokuapp.com`)
})
app.listen()
