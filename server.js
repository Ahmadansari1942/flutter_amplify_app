const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");

const app = express();
app.use(cors());
app.use(express.json());

// MongoDB connect
const mongoose = require("mongoose");

mongoose.connect("mongodb://13.233.143.117:27017/blog_db")
  .then(() => console.log("MongoDB connected"))
  .catch(err => console.error("MongoDB connection error:", err));
// Schema
const Post = mongoose.model("Post", {
  title: String,
  content: String,
});

// Routes
app.get("/", (req, res) => {
  res.send("API Running 🚀");
});

app.get("/posts", async (req, res) => {
  const posts = await Post.find();
  res.json(posts);
});

app.post("/posts", async (req, res) => {
  const post = new Post(req.body);
  await post.save();
  res.send("Post added");
});

app.listen(3000, () => console.log("Server running"));


const allowedOrigins = ["
https://main.d1427t43v1id7x.amplifyapp.com"];

app.use(cors({
  origin: function(origin, callback){
    if(!origin) return callback(null, true);
    if(allowedOrigins.indexOf(origin) === -1){
      const msg = 'CORS policy does not allow access from the specified Origin.';
      return callback(new Error(msg), false);
    }
    return callback(null, true);
  }
}));
