FROM odoo:17.0

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir -r /tmp/requirements.txt || true

COPY odoo.conf /etc/odoo/odoo.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir -p /mnt/extra-addons
COPY addons /mnt/extra-addons

EXPOSE 8069

ENTRYPOINT ["/entrypoint.sh"]
