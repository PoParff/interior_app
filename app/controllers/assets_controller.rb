# app/controllers/assets_controller.rb
class AssetsController < ApplicationController
    def serve
      # Получаем путь файла из параметров
      file_path = Rails.root.join('app', 'assets', params[:file])
  
      # Проверяем, существует ли файл
      if File.exist?(file_path)
        # Определяем MIME-тип файла
        mime_type = Mime::Type.lookup_by_extension(File.extname(file_path).delete('.'))
        
        # Отправляем файл
        send_file(file_path, type: mime_type || 'application/octet-stream', disposition: 'inline')
      else
        # Если файл не найден, отправляем ошибку 404
        render plain: 'File not found', status: :not_found
      end
    end
  end