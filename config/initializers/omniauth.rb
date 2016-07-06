Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,  'TSmhAnrlf5rv2aLPE5l3eaoqs0', 'nZSJp0k0z5BLNbN73noEFwdEW5OzHqPmmvCH9Nw8Q5UAN2A39b0'
  provider :facebook, '2638538739847170', '11f447265c8662bc0309ba9719a1aa750'
end