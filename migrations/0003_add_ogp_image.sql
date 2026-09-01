-- 既存の行や seed データには og:image が無いため、
-- デフォルト値を空文字 ('') とすることで影響なく列を追加できます。
-- このマイグレーションランナーは down を自動実行しません。ロールバックが必要な場合は、
-- DB をバックアップし、アプリを停止してこのマイグレーションより前の版へ戻す準備をしてから、
-- 次を手動実行します:
--   ALTER TABLE bookmarks DROP COLUMN ogp_image_url;
--   DELETE FROM schema_migrations WHERE name = '0003_add_ogp_image.sql';
ALTER TABLE bookmarks ADD COLUMN ogp_image_url TEXT NOT NULL DEFAULT '';
