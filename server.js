const  express  =  require("express");

const app = express(); //Initialized express

app.use(express.json());
app.use(cors());

const port = process.env.PORT || 5000;

app.get("/", (req, res) => {

    res.status(200).send("Engine Started, Ready to take off!");

})

app.listen(port, () => {

    console.log(`Here we go, Engines started at ${port}.`);

})