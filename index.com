<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>教子有方 - 文生视频展示</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4, #fad390, #fbc2eb, #a18cd1);
            color: #333;
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }

        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        header {
            padding: 1rem;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        header a {
            text-decoration: none;
            color: #333;
            margin: 0 1rem;
            font-weight: bold;
        }

        header a:hover {
            color: #007BFF;
        }

        .container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 1rem;
        }

        .section {
            margin-bottom: 2rem;
            padding: 1.5rem;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .section h2 {
            margin-bottom: 1rem;
            font-size: 1.8rem;
            color: #444;
        }

        .frame {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5rem;
            margin-top: 1rem;
        }

        .frame-item {
            flex: 1 1 calc(33.333% - 1rem);
            background: #f8f9fa;
            padding: 1rem;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .frame-item img {
            max-width: 100%;
            border-radius: 8px;
        }

        video {
            width: 100%;
            border-radius: 10px;
            margin-top: 1rem;
        }

        footer {
            text-align: center;
            padding: 1rem;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0 -4px 6px rgba(0, 0, 0, 0.1);
        }

        footer p {
            margin: 0;
            font-size: 0.9rem;
            color: #555;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <a href="#video">视频展示</a>
            <a href="#frames">关键帧</a>
            <a href="#about">关于成语</a>
        </nav>
    </header>

    <div class="container">
        <!-- 视频展示 -->
        <section id="video" class="section">
            <h2>文生视频：教子有方</h2>
            <p>以下是成语“教子有方”的完整文生视频，展现古代家庭教育的智慧。</p>
            <video controls>
                <source src="https://ZYFX-hkx.github.io/sp/shipin.mp4" type="video/mp4">
                您的浏览器不支持视频播放。
            </video>
        </section>

        <!-- 关键帧展示 -->
        <section id="frames" class="section">
            <h2>视频关键帧展示</h2>
            <div class="frame">
                <div class="frame-item">
                    <img src="https://github.com/ZYFX-hkx/sp/blob/main/11.png?raw=true" alt="父亲教子">
                    <p>孩子坐在书案前认真学习，烛光摇曳，充满希望。</p>
                </div>
                <div class="frame-item">
                    <img src="https://github.com/ZYFX-hkx/sp/blob/main/12.png?raw=true" alt="儿子专注学习">
                    <p>孩子打算翻页。</p>
                </div>
                <div class="frame-item">
                    <img src="https://github.com/ZYFX-hkx/sp/blob/main/13.png?raw=true" alt="实践教学">
                    <p>孩子合上书准备问问题。</p>
                </div>
                <div class="frame-item">
                    <img src="https://github.com/ZYFX-hkx/sp/blob/main/14.png?raw=true" alt="家庭分享时光">
                    <p>孩子打算向父亲请教。</p>
                </div>
                <div class="frame-item">
                    <img src="https://github.com/ZYFX-hkx/sp/blob/main/15.png?raw=true" alt="儿子成长">
                    <p>父亲躺在窗户边听孩子的讲述。</p>
                </div>
            </div>
        </section>

        <!-- 关于成语 -->
        <section id="about" class="section">
            <h2>关于成语“教子有方”</h2>
            <p>“教子有方”形容家长教育子女的方法得当，孩子表现优秀，其乐融融。</p>
        </section>
    </div>

    <footer>
        <p>&copy; 2024 成语文生视频展示. 由GitHub Pages支持。</p>
    </footer>
</body>
</html>
