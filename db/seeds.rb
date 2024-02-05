
# Creacion de usuarios de ejemplo
 luciano =  User.create(username: 'luciano', email: 'luciano@gmail.com', password: 'lucho123')
 mariano = User.create(username: 'mariano', email: 'mariano@gmail.com', password: 'marian3456')

# Creacion de link de ejemplo
link1 = Link.create(
  name: 'Link 1',
  slug: SecureRandom.hex(3),
  url: 'https://catedras.linti.unlp.edu.ar/login/index.php',
  user_id: luciano.id,
  link_category: 'regular',
  expires_at: '',
  password: ''
)

link2 = Link.create(
    name: 'Link 2',
    slug: SecureRandom.hex(3),
    url: 'https://www.ruby-lang.org/es/documentation/',
    user_id: luciano.id,
    link_category: 'private_link',
    expires_at: '',
    password: '123'
)


# Creacion de dos accesos para cada link con fechas distintas
LinkAccess.create(link_id: link1.id, access_time: Time.now - 2.days, ip_address: '192.168.1.1')
LinkAccess.create(link_id: link1.id, access_time: Time.now - 1.day, ip_address: '192.168.1.2')

LinkAccess.create(link_id: link2.id, access_time: Time.now - 3.days, ip_address: '192.168.1.3')
LinkAccess.create(link_id: link2.id, access_time: Time.now - 4.days, ip_address: '192.168.1.4')
