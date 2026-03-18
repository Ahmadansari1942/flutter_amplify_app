const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");

const app = express();
app.use(cors());
app.use(express.json());

// MongoDB connect
mongoose.connect("YOUR_MONGO_URL")
  .then(() => console.log("MongoDB Connected"))
  .catch(err => console.log(err));

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
