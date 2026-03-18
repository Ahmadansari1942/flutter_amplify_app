const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");

const app = express();
app.use(cors({origin: "*"}));
app.use(express.json());

mongoose.connect("mongodb://localhost:27017/blog_db")
  .then(() => console.log("✅ MongoDB connected"))
  .catch(err => console.error("❌ Error:", err));

const postSchema = new mongoose.Schema({
  title: String,
  content: String,
  author: String,
  image: String
});

const Post = mongoose.model("Post", postSchema);

app.get("/posts", async (req, res) => {
  try {
    const posts = await Post.find();
    res.json(posts);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.post("/posts", async (req, res) => {
  try {
    const post = new Post(req.body);
    await post.save();
    res.json(post);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
});

app.listen(80, "0.0.0.0", () => {
  console.log("✅ Server running on port 80");
});
