# Usando a imagem oficial da Evolution API
FROM atendai/evolution-api:v2.2.1

# Definindo as variáveis de ambiente
ENV SERVER_URL=${SERVER_URL} \
    DEL_INSTANCE=${DEL_INSTANCE} \
    DATABASE_PROVIDER=${DATABASE_PROVIDER} \
    DATABASE_CONNECTION_URI=${DATABASE_CONNECTION_URI} \
    DATABASE_ENABLED=${DATABASE_ENABLED} \
    DATABASE_SAVE_DATA_INSTANCE=${DATABASE_SAVE_DATA_INSTANCE} \
    DATABASE_SAVE_DATA_NEW_MESSAGE=${DATABASE_SAVE_DATA_NEW_MESSAGE} \
    DATABASE_SAVE_MESSAGE_UPDATE=${DATABASE_SAVE_MESSAGE_UPDATE} \
    DATABASE_SAVE_DATA_CONTACTS=${DATABASE_SAVE_DATA_CONTACTS} \
    DATABASE_SAVE_DATA_CHATS=${DATABASE_SAVE_DATA_CHATS} \
    DATABASE_SAVE_DATA_LABELS=${DATABASE_SAVE_DATA_LABELS} \
    DATABASE_SAVE_DATA_HISTORIC=${DATABASE_SAVE_DATA_HISTORIC} \
    DATABASE_CONNECTION_CLIENT_NAME=${DATABASE_CONNECTION_CLIENT_NAME} \
    RABBITMQ_ENABLED=${RABBITMQ_ENABLED} \
    RABBITMQ_URI=${RABBITMQ_URI} \
    RABBITMQ_EXCHANGE_NAME=${RABBITMQ_EXCHANGE_NAME} \
    RABBITMQ_GLOBAL_ENABLED=${RABBITMQ_GLOBAL_ENABLED} \
    RABBITMQ_EVENTS_APPLICATION_STARTUP=${RABBITMQ_EVENTS_APPLICATION_STARTUP} \
    RABBITMQ_EVENTS_INSTANCE_CREATE=${RABBITMQ_EVENTS_INSTANCE_CREATE} \
    RABBITMQ_EVENTS_INSTANCE_DELETE=${RABBITMQ_EVENTS_INSTANCE_DELETE} \
    RABBITMQ_EVENTS_QRCODE_UPDATED=${RABBITMQ_EVENTS_QRCODE_UPDATED} \
    RABBITMQ_EVENTS_MESSAGES_SET=${RABBITMQ_EVENTS_MESSAGES_SET} \
    RABBITMQ_EVENTS_MESSAGES_UPSERT=${RABBITMQ_EVENTS_MESSAGES_UPSERT} \
    RABBITMQ_EVENTS_MESSAGES_EDITED=${RABBITMQ_EVENTS_MESSAGES_EDITED} \
    RABBITMQ_EVENTS_MESSAGES_UPDATE=${RABBITMQ_EVENTS_MESSAGES_UPDATE} \
    RABBITMQ_EVENTS_MESSAGES_DELETE=${RABBITMQ_EVENTS_MESSAGES_DELETE} \
    RABBITMQ_EVENTS_SEND_MESSAGE=${RABBITMQ_EVENTS_SEND_MESSAGE} \
    RABBITMQ_EVENTS_CONTACTS_SET=${RABBITMQ_EVENTS_CONTACTS_SET} \
    RABBITMQ_EVENTS_CONTACTS_UPSERT=${RABBITMQ_EVENTS_CONTACTS_UPSERT} \
    RABBITMQ_EVENTS_CONTACTS_UPDATE=${RABBITMQ_EVENTS_CONTACTS_UPDATE} \
    RABBITMQ_EVENTS_PRESENCE_UPDATE=${RABBITMQ_EVENTS_PRESENCE_UPDATE} \
    RABBITMQ_EVENTS_CHATS_SET=${RABBITMQ_EVENTS_CHATS_SET} \
    RABBITMQ_EVENTS_CHATS_UPSERT=${RABBITMQ_EVENTS_CHATS_UPSERT} \
    RABBITMQ_EVENTS_CHATS_UPDATE=${RABBITMQ_EVENTS_CHATS_UPDATE} \
    RABBITMQ_EVENTS_CHATS_DELETE=${RABBITMQ_EVENTS_CHATS_DELETE} \
    RABBITMQ_EVENTS_GROUPS_UPSERT=${RABBITMQ_EVENTS_GROUPS_UPSERT} \
    RABBITMQ_EVENTS_GROUP_UPDATE=${RABBITMQ_EVENTS_GROUP_UPDATE} \
    RABBITMQ_EVENTS_GROUP_PARTICIPANTS_UPDATE=${RABBITMQ_EVENTS_GROUP_PARTICIPANTS_UPDATE} \
    RABBITMQ_EVENTS_CONNECTION_UPDATE=${RABBITMQ_EVENTS_CONNECTION_UPDATE} \
    RABBITMQ_EVENTS_CALL=${RABBITMQ_EVENTS_CALL} \
    RABBITMQ_EVENTS_TYPEBOT_START=${RABBITMQ_EVENTS_TYPEBOT_START} \
    RABBITMQ_EVENTS_TYPEBOT_CHANGE_STATUS=${RABBITMQ_EVENTS_TYPEBOT_CHANGE_STATUS} \
    SQS_ENABLED=${SQS_ENABLED} \
    SQS_ACCESS_KEY_ID=${SQS_ACCESS_KEY_ID} \
    SQS_SECRET_ACCESS_KEY=${SQS_SECRET_ACCESS_KEY} \
    SQS_ACCOUNT_ID=${SQS_ACCOUNT_ID} \
    SQS_REGION=${SQS_REGION} \
    WEBSOCKET_ENABLED=${WEBSOCKET_ENABLED} \
    WEBSOCKET_GLOBAL_EVENTS=${WEBSOCKET_GLOBAL_EVENTS} \
    WA_BUSINESS_TOKEN_WEBHOOK=${WA_BUSINESS_TOKEN_WEBHOOK} \
    WA_BUSINESS_URL=${WA_BUSINESS_URL} \
    WA_BUSINESS_VERSION=${WA_BUSINESS_VERSION} \
    WA_BUSINESS_LANGUAGE=${WA_BUSINESS_LANGUAGE} \
    WEBHOOK_GLOBAL_URL=${WEBHOOK_GLOBAL_URL} \
    WEBHOOK_GLOBAL_ENABLED=${WEBHOOK_GLOBAL_ENABLED} \
    WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS=${WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS} \
    WEBHOOK_EVENTS_APPLICATION_STARTUP=${WEBHOOK_EVENTS_APPLICATION_STARTUP} \
    WEBHOOK_EVENTS_QRCODE_UPDATED=${WEBHOOK_EVENTS_QRCODE_UPDATED} \
    WEBHOOK_EVENTS_MESSAGES_SET=${WEBHOOK_EVENTS_MESSAGES_SET} \
    WEBHOOK_EVENTS_MESSAGES_UPSERT=${WEBHOOK_EVENTS_MESSAGES_UPSERT} \
    WEBHOOK_EVENTS_MESSAGES_EDITED=${WEBHOOK_EVENTS_MESSAGES_EDITED} \
    WEBHOOK_EVENTS_MESSAGES_UPDATE=${WEBHOOK_EVENTS_MESSAGES_UPDATE} \
    WEBHOOK_EVENTS_MESSAGES_DELETE=${WEBHOOK_EVENTS_MESSAGES_DELETE} \
    WEBHOOK_EVENTS_SEND_MESSAGE=${WEBHOOK_EVENTS_SEND_MESSAGE} \
    WEBHOOK_EVENTS_CONTACTS_SET=${WEBHOOK_EVENTS_CONTACTS_SET} \
    WEBHOOK_EVENTS_CONTACTS_UPSERT=${WEBHOOK_EVENTS_CONTACTS_UPSERT} \
    WEBHOOK_EVENTS_CONTACTS_UPDATE=${WEBHOOK_EVENTS_CONTACTS_UPDATE} \
    WEBHOOK_EVENTS_PRESENCE_UPDATE=${WEBHOOK_EVENTS_PRESENCE_UPDATE} \
    WEBHOOK_EVENTS_CHATS_SET=${WEBHOOK_EVENTS_CHATS_SET} \
    WEBHOOK_EVENTS_CHATS_UPSERT=${WEBHOOK_EVENTS_CHATS_UPSERT} \
    WEBHOOK_EVENTS_CHATS_UPDATE=${WEBHOOK_EVENTS_CHATS_UPDATE} \
    WEBHOOK_EVENTS_CHATS_DELETE=${WEBHOOK_EVENTS_CHATS_DELETE} \
    WEBHOOK_EVENTS_GROUPS_UPSERT=${WEBHOOK_EVENTS_GROUPS_UPSERT} \
    WEBHOOK_EVENTS_GROUPS_UPDATE=${WEBHOOK_EVENTS_GROUPS_UPDATE} \
    WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE=${WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE} \
    WEBHOOK_EVENTS_CONNECTION_UPDATE=${WEBHOOK_EVENTS_CONNECTION_UPDATE} \
    WEBHOOK_EVENTS_LABELS_EDIT=${WEBHOOK_EVENTS_LABELS_EDIT} \
    WEBHOOK_EVENTS_LABELS_ASSOCIATION=${WEBHOOK_EVENTS_LABELS_ASSOCIATION} \
    WEBHOOK_EVENTS_CALL=${WEBHOOK_EVENTS_CALL} \
    WEBHOOK_EVENTS_TYPEBOT_START=${WEBHOOK_EVENTS_TYPEBOT_START} \
    WEBHOOK_EVENTS_TYPEBOT_CHANGE_STATUS=${WEBHOOK_EVENTS_TYPEBOT_CHANGE_STATUS} \
    WEBHOOK_EVENTS_ERRORS=${WEBHOOK_EVENTS_ERRORS} \
    WEBHOOK_EVENTS_ERRORS_WEBHOOK=${WEBHOOK_EVENTS_ERRORS_WEBHOOK} \
    CONFIG_SESSION_PHONE_CLIENT=${CONFIG_SESSION_PHONE_CLIENT} \
    CONFIG_SESSION_PHONE_NAME=${CONFIG_SESSION_PHONE_NAME} \
    CONFIG_SESSION_PHONE_VERSION=${CONFIG_SESSION_PHONE_VERSION} \
    QRCODE_LIMIT=${QRCODE_LIMIT} \
    OPENAI_ENABLED=${OPENAI_ENABLED} \
    DIFY_ENABLED=${DIFY_ENABLED} \
    TYPEBOT_ENABLED=${TYPEBOT_ENABLED} \
    TYPEBOT_API_VERSION=${TYPEBOT_API_VERSION} \
    CHATWOOT_ENABLED=${CHATWOOT_ENABLED} \
    CHATWOOT_MESSAGE_READ=${CHATWOOT_MESSAGE_READ} \
    CHATWOOT_MESSAGE_DELETE=${CHATWOOT_MESSAGE_DELETE} \
    CHATWOOT_IMPORT_DATABASE_CONNECTION_URI=${CHATWOOT_IMPORT_DATABASE_CONNECTION_URI} \
    CHATWOOT_IMPORT_PLACEHOLDER_MEDIA_MESSAGE=${CHATWOOT_IMPORT_PLACEHOLDER_MEDIA_MESSAGE} \
    CACHE_REDIS_ENABLED=${CACHE_REDIS_ENABLED} \
    CACHE_REDIS_URI=${CACHE_REDIS_URI} \
    CACHE_REDIS_PREFIX_KEY=${CACHE_REDIS_PREFIX_KEY} \
    CACHE_REDIS_SAVE_INSTANCES=${CACHE_REDIS_SAVE_INSTANCES} \
    CACHE_LOCAL_ENABLED=${CACHE_LOCAL_ENABLED} \
    REDIS_HOST=${REDIS_HOST} \
    REDIS_PORT=${REDIS_PORT} \
    REDIS_PASSWORD=${REDIS_PASSWORD} \
    S3_ENABLED=${S3_ENABLED} \
    S3_ACCESS_KEY=${S3_ACCESS_KEY} \
    S3_SECRET_KEY=${S3_SECRET_KEY} \
    S3_BUCKET=${S3_BUCKET} \
    S3_PORT=${S3_PORT} \
    S3_ENDPOINT=${S3_ENDPOINT} \
    S3_USE_SSL=${S3_USE_SSL} \
    AUTHENTICATION_API_KEY=${AUTHENTICATION_API_KEY} \
    AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=${AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES} \
    LANGUAGE=${LANGUAGE}

# Expondo a porta da aplicação
EXPOSE 8080

# Comando para diagnóstico e execução
CMD ["sh", "-c", "redis-cli -u $CACHE_REDIS_URI ping && npm run start:prod"]
