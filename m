Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD944291EB
	for <lists+usrp-users@lfdr.de>; Mon, 11 Oct 2021 16:33:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAD2E381011
	for <lists+usrp-users@lfdr.de>; Mon, 11 Oct 2021 10:33:35 -0400 (EDT)
Received: from mailg210.ethz.ch (mailg210.ethz.ch [129.132.198.194])
	by mm2.emwd.com (Postfix) with ESMTPS id 3167638419F
	for <usrp-users@lists.ettus.com>; Mon, 11 Oct 2021 10:32:45 -0400 (EDT)
Received: from mailm214.d.ethz.ch (2001:67c:10ec:5603::28) by mailg210.ethz.ch
 (2001:67c:10ec:5606::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Mon, 11 Oct
 2021 16:32:21 +0200
Received: from [192.33.93.45] (192.33.93.45) by mailm214.d.ethz.ch
 (2001:67c:10ec:5603::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Mon, 11 Oct
 2021 16:32:43 +0200
From: Martin Kotuliak <martin.kotuliak@inf.ethz.ch>
To: <usrp-users@lists.ettus.com>
References: <65bb4a65-6f69-6680-ff8d-84f47f299fbf@inf.ethz.ch>
Message-ID: <6235cae6-d5e7-917f-7891-788d4ab62f5c@inf.ethz.ch>
Date: Mon, 11 Oct 2021 16:32:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <65bb4a65-6f69-6680-ff8d-84f47f299fbf@inf.ethz.ch>
Content-Type: multipart/mixed;
	boundary="------------B03993274150123D7868758C"
Content-Language: en-US
X-Originating-IP: [192.33.93.45]
X-ClientProxiedBy: mailm112.d.ethz.ch (2001:67c:10ec:5602::24) To
 mailm214.d.ethz.ch (2001:67c:10ec:5603::28)
Message-ID-Hash: EXS5QW626HTXZSQT3FFZEKWYC5TRHUSD
X-Message-ID-Hash: EXS5QW626HTXZSQT3FFZEKWYC5TRHUSD
X-MailFrom: martin.kotuliak@inf.ethz.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: b210 ISM band oscillation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EXS5QW626HTXZSQT3FFZEKWYC5TRHUSD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--------------B03993274150123D7868758C
Content-Type: multipart/alternative;
	boundary="------------81A31D3E17E153ED16550F3E"

--------------81A31D3E17E153ED16550F3E
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

I am also including a gnuradio flowgraph which can be used for the 
analysis. The behavior is from exactly 400.1MHz up to 444.99MHz. 400MHz 
and 445MHz are fine again.

My hypothesis is that this a UHD software hardcoded behavior.

On 10/11/21 3:48 PM, Martin Kotuliak wrote:
> Hello Everyone,
>
> I am writing you because of a inconsistent transmit behavior of the 
> b210 on ISM bands. When transmitting, its power/bandwidth oscillates 
> between two states. But when changed to a carrier frequency a few MHz 
> higher (non ISM) the behavior disappears. I wonder if this a known 
> problem for B210. I don't see the same problem for X310. I am 
> attaching a picture of a waterfall.
>
> UHD Version: 4.0 and 3.15
> OS: Ubuntu 20
> USRP devices: B210 and B205mini (X310 works)
>
> Anyone else has the same problem?
>
> Best,
> Martin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------81A31D3E17E153ED16550F3E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>I am also including a gnuradio flowgraph which can be used for
      the analysis. The behavior is from exactly 400.1MHz up to
      444.99MHz. 400MHz and 445MHz are fine again.</p>
    <p>My hypothesis is that this a UHD software hardcoded behavior.<br>
    </p>
    <div class="moz-cite-prefix">On 10/11/21 3:48 PM, Martin Kotuliak
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:65bb4a65-6f69-6680-ff8d-84f47f299fbf@inf.ethz.ch">Hello
      Everyone,
      <br>
      <br>
      I am writing you because of a inconsistent transmit behavior of
      the b210 on ISM bands. When transmitting, its power/bandwidth
      oscillates between two states. But when changed to a carrier
      frequency a few MHz higher (non ISM) the behavior disappears. I
      wonder if this a known problem for B210. I don't see the same
      problem for X310. I am attaching a picture of a waterfall.
      <br>
      <br>
      UHD Version: 4.0 and 3.15
      <br>
      OS: Ubuntu 20
      <br>
      USRP devices: B210 and B205mini (X310 works)
      <br>
      <br>
      Anyone else has the same problem?
      <br>
      <br>
      Best,
      <br>
      Martin
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------81A31D3E17E153ED16550F3E--

--------------B03993274150123D7868758C
Content-Type: application/gnuradio-grc; name="test.grc"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="test.grc"

b3B0aW9uczoKICBwYXJhbWV0ZXJzOgogICAgYXV0aG9yOiAnJwogICAgY2F0Y2hfZXhjZXB0
aW9uczogJ1RydWUnCiAgICBjYXRlZ29yeTogJ1tHUkMgSGllciBCbG9ja3NdJwogICAgY21h
a2Vfb3B0OiAnJwogICAgY29tbWVudDogJycKICAgIGNvcHlyaWdodDogJycKICAgIGRlc2Ny
aXB0aW9uOiAnJwogICAgZ2VuX2NtYWtlOiAnT24nCiAgICBnZW5fbGlua2luZzogZHluYW1p
YwogICAgZ2VuZXJhdGVfb3B0aW9uczogcXRfZ3VpCiAgICBoaWVyX2Jsb2NrX3NyY19wYXRo
OiAnLjonCiAgICBpZDogdGVzdDIKICAgIG1heF9ub3V0czogJzAnCiAgICBvdXRwdXRfbGFu
Z3VhZ2U6IHB5dGhvbgogICAgcGxhY2VtZW50OiAoMCwwKQogICAgcXRfcXNzX3RoZW1lOiAn
JwogICAgcmVhbHRpbWVfc2NoZWR1bGluZzogJycKICAgIHJ1bjogJ1RydWUnCiAgICBydW5f
Y29tbWFuZDogJ3tweXRob259IC11IHtmaWxlbmFtZX0nCiAgICBydW5fb3B0aW9uczogcHJv
bXB0CiAgICBzaXppbmdfbW9kZTogZml4ZWQKICAgIHRocmVhZF9zYWZlX3NldHRlcnM6ICcn
CiAgICB0aXRsZTogTm90IHRpdGxlZCB5ZXQKICBzdGF0ZXM6CiAgICBidXNfc2luazogZmFs
c2UKICAgIGJ1c19zb3VyY2U6IGZhbHNlCiAgICBidXNfc3RydWN0dXJlOiBudWxsCiAgICBj
b29yZGluYXRlOiBbOCwgOF0KICAgIHJvdGF0aW9uOiAwCiAgICBzdGF0ZTogZW5hYmxlZAoK
YmxvY2tzOgotIG5hbWU6IGNlbnRlcl9mcmVxCiAgaWQ6IHZhcmlhYmxlX3F0Z3VpX3Jhbmdl
CiAgcGFyYW1ldGVyczoKICAgIGNvbW1lbnQ6ICcnCiAgICBndWlfaGludDogJycKICAgIGxh
YmVsOiAnJwogICAgbWluX2xlbjogJzIwMCcKICAgIG9yaWVudDogUXRDb3JlLlF0Lkhvcml6
b250YWwKICAgIHJhbmdlVHlwZTogZmxvYXQKICAgIHN0YXJ0OiAnNDAwJwogICAgc3RlcDog
JzAuMScKICAgIHN0b3A6ICc0NTAnCiAgICB2YWx1ZTogJzQwMCcKICAgIHdpZGdldDogY291
bnRlcl9zbGlkZXIKICBzdGF0ZXM6CiAgICBidXNfc2luazogZmFsc2UKICAgIGJ1c19zb3Vy
Y2U6IGZhbHNlCiAgICBidXNfc3RydWN0dXJlOiBudWxsCiAgICBjb29yZGluYXRlOiBbNzEy
LCA0NC4wXQogICAgcm90YXRpb246IDAKICAgIHN0YXRlOiB0cnVlCi0gbmFtZTogZ2Fpbgog
IGlkOiB2YXJpYWJsZV9xdGd1aV9yYW5nZQogIHBhcmFtZXRlcnM6CiAgICBjb21tZW50OiAn
JwogICAgZ3VpX2hpbnQ6ICcnCiAgICBsYWJlbDogJycKICAgIG1pbl9sZW46ICcyMDAnCiAg
ICBvcmllbnQ6IFF0Q29yZS5RdC5Ib3Jpem9udGFsCiAgICByYW5nZVR5cGU6IGZsb2F0CiAg
ICBzdGFydDogJzAnCiAgICBzdGVwOiAnMC4wMScKICAgIHN0b3A6ICcxJwogICAgdmFsdWU6
ICcwLjUnCiAgICB3aWRnZXQ6IGNvdW50ZXJfc2xpZGVyCiAgc3RhdGVzOgogICAgYnVzX3Np
bms6IGZhbHNlCiAgICBidXNfc291cmNlOiBmYWxzZQogICAgYnVzX3N0cnVjdHVyZTogbnVs
bAogICAgY29vcmRpbmF0ZTogWzUxMiwgMzYuMF0KICAgIHJvdGF0aW9uOiAwCiAgICBzdGF0
ZTogdHJ1ZQotIG5hbWU6IHNhbXBfcmF0ZQogIGlkOiB2YXJpYWJsZQogIHBhcmFtZXRlcnM6
CiAgICBjb21tZW50OiAnJwogICAgdmFsdWU6ICc2NDAwMCcKICBzdGF0ZXM6CiAgICBidXNf
c2luazogZmFsc2UKICAgIGJ1c19zb3VyY2U6IGZhbHNlCiAgICBidXNfc3RydWN0dXJlOiBu
dWxsCiAgICBjb29yZGluYXRlOiBbMTg0LCAxMl0KICAgIHJvdGF0aW9uOiAwCiAgICBzdGF0
ZTogZW5hYmxlZAotIG5hbWU6IGFuYWxvZ19ub2lzZV9zb3VyY2VfeF8wCiAgaWQ6IGFuYWxv
Z19ub2lzZV9zb3VyY2VfeAogIHBhcmFtZXRlcnM6CiAgICBhZmZpbml0eTogJycKICAgIGFs
aWFzOiAnJwogICAgYW1wOiAnMScKICAgIGNvbW1lbnQ6ICcnCiAgICBtYXhvdXRidWY6ICcw
JwogICAgbWlub3V0YnVmOiAnMCcKICAgIG5vaXNlX3R5cGU6IGFuYWxvZy5HUl9HQVVTU0lB
TgogICAgc2VlZDogJzAnCiAgICB0eXBlOiBjb21wbGV4CiAgc3RhdGVzOgogICAgYnVzX3Np
bms6IGZhbHNlCiAgICBidXNfc291cmNlOiBmYWxzZQogICAgYnVzX3N0cnVjdHVyZTogbnVs
bAogICAgY29vcmRpbmF0ZTogWzQwOCwgNTA4LjBdCiAgICByb3RhdGlvbjogMAogICAgc3Rh
dGU6IHRydWUKLSBuYW1lOiB1aGRfdXNycF9zaW5rXzAKICBpZDogdWhkX3VzcnBfc2luawog
IHBhcmFtZXRlcnM6CiAgICBhZmZpbml0eTogJycKICAgIGFsaWFzOiAnJwogICAgYW50MDog
JyJUWC9SWCInCiAgICBhbnQxOiAnIlRYL1JYIicKICAgIGFudDEwOiAnIlRYL1JYIicKICAg
IGFudDExOiAnIlRYL1JYIicKICAgIGFudDEyOiAnIlRYL1JYIicKICAgIGFudDEzOiAnIlRY
L1JYIicKICAgIGFudDE0OiAnIlRYL1JYIicKICAgIGFudDE1OiAnIlRYL1JYIicKICAgIGFu
dDE2OiAnIlRYL1JYIicKICAgIGFudDE3OiAnIlRYL1JYIicKICAgIGFudDE4OiAnIlRYL1JY
IicKICAgIGFudDE5OiAnIlRYL1JYIicKICAgIGFudDI6ICciVFgvUlgiJwogICAgYW50MjA6
ICciVFgvUlgiJwogICAgYW50MjE6ICciVFgvUlgiJwogICAgYW50MjI6ICciVFgvUlgiJwog
ICAgYW50MjM6ICciVFgvUlgiJwogICAgYW50MjQ6ICciVFgvUlgiJwogICAgYW50MjU6ICci
VFgvUlgiJwogICAgYW50MjY6ICciVFgvUlgiJwogICAgYW50Mjc6ICciVFgvUlgiJwogICAg
YW50Mjg6ICciVFgvUlgiJwogICAgYW50Mjk6ICciVFgvUlgiJwogICAgYW50MzogJyJUWC9S
WCInCiAgICBhbnQzMDogJyJUWC9SWCInCiAgICBhbnQzMTogJyJUWC9SWCInCiAgICBhbnQ0
OiAnIlRYL1JYIicKICAgIGFudDU6ICciVFgvUlgiJwogICAgYW50NjogJyJUWC9SWCInCiAg
ICBhbnQ3OiAnIlRYL1JYIicKICAgIGFudDg6ICciVFgvUlgiJwogICAgYW50OTogJyJUWC9S
WCInCiAgICBidzA6ICcwJwogICAgYncxOiAnMCcKICAgIGJ3MTA6ICcwJwogICAgYncxMTog
JzAnCiAgICBidzEyOiAnMCcKICAgIGJ3MTM6ICcwJwogICAgYncxNDogJzAnCiAgICBidzE1
OiAnMCcKICAgIGJ3MTY6ICcwJwogICAgYncxNzogJzAnCiAgICBidzE4OiAnMCcKICAgIGJ3
MTk6ICcwJwogICAgYncyOiAnMCcKICAgIGJ3MjA6ICcwJwogICAgYncyMTogJzAnCiAgICBi
dzIyOiAnMCcKICAgIGJ3MjM6ICcwJwogICAgYncyNDogJzAnCiAgICBidzI1OiAnMCcKICAg
IGJ3MjY6ICcwJwogICAgYncyNzogJzAnCiAgICBidzI4OiAnMCcKICAgIGJ3Mjk6ICcwJwog
ICAgYnczOiAnMCcKICAgIGJ3MzA6ICcwJwogICAgYnczMTogJzAnCiAgICBidzQ6ICcwJwog
ICAgYnc1OiAnMCcKICAgIGJ3NjogJzAnCiAgICBidzc6ICcwJwogICAgYnc4OiAnMCcKICAg
IGJ3OTogJzAnCiAgICBjZW50ZXJfZnJlcTA6IGNlbnRlcl9mcmVxKjFlNgogICAgY2VudGVy
X2ZyZXExOiAnMCcKICAgIGNlbnRlcl9mcmVxMTA6ICcwJwogICAgY2VudGVyX2ZyZXExMTog
JzAnCiAgICBjZW50ZXJfZnJlcTEyOiAnMCcKICAgIGNlbnRlcl9mcmVxMTM6ICcwJwogICAg
Y2VudGVyX2ZyZXExNDogJzAnCiAgICBjZW50ZXJfZnJlcTE1OiAnMCcKICAgIGNlbnRlcl9m
cmVxMTY6ICcwJwogICAgY2VudGVyX2ZyZXExNzogJzAnCiAgICBjZW50ZXJfZnJlcTE4OiAn
MCcKICAgIGNlbnRlcl9mcmVxMTk6ICcwJwogICAgY2VudGVyX2ZyZXEyOiAnMCcKICAgIGNl
bnRlcl9mcmVxMjA6ICcwJwogICAgY2VudGVyX2ZyZXEyMTogJzAnCiAgICBjZW50ZXJfZnJl
cTIyOiAnMCcKICAgIGNlbnRlcl9mcmVxMjM6ICcwJwogICAgY2VudGVyX2ZyZXEyNDogJzAn
CiAgICBjZW50ZXJfZnJlcTI1OiAnMCcKICAgIGNlbnRlcl9mcmVxMjY6ICcwJwogICAgY2Vu
dGVyX2ZyZXEyNzogJzAnCiAgICBjZW50ZXJfZnJlcTI4OiAnMCcKICAgIGNlbnRlcl9mcmVx
Mjk6ICcwJwogICAgY2VudGVyX2ZyZXEzOiAnMCcKICAgIGNlbnRlcl9mcmVxMzA6ICcwJwog
ICAgY2VudGVyX2ZyZXEzMTogJzAnCiAgICBjZW50ZXJfZnJlcTQ6ICcwJwogICAgY2VudGVy
X2ZyZXE1OiAnMCcKICAgIGNlbnRlcl9mcmVxNjogJzAnCiAgICBjZW50ZXJfZnJlcTc6ICcw
JwogICAgY2VudGVyX2ZyZXE4OiAnMCcKICAgIGNlbnRlcl9mcmVxOTogJzAnCiAgICBjbG9j
a19yYXRlOiAwZTAKICAgIGNsb2NrX3NvdXJjZTA6ICcnCiAgICBjbG9ja19zb3VyY2UxOiAn
JwogICAgY2xvY2tfc291cmNlMjogJycKICAgIGNsb2NrX3NvdXJjZTM6ICcnCiAgICBjbG9j
a19zb3VyY2U0OiAnJwogICAgY2xvY2tfc291cmNlNTogJycKICAgIGNsb2NrX3NvdXJjZTY6
ICcnCiAgICBjbG9ja19zb3VyY2U3OiAnJwogICAgY29tbWVudDogJycKICAgIGRldl9hZGRy
OiAnIiInCiAgICBkZXZfYXJnczogJycKICAgIGdhaW4wOiBnYWluCiAgICBnYWluMTogJzAn
CiAgICBnYWluMTA6ICcwJwogICAgZ2FpbjExOiAnMCcKICAgIGdhaW4xMjogJzAnCiAgICBn
YWluMTM6ICcwJwogICAgZ2FpbjE0OiAnMCcKICAgIGdhaW4xNTogJzAnCiAgICBnYWluMTY6
ICcwJwogICAgZ2FpbjE3OiAnMCcKICAgIGdhaW4xODogJzAnCiAgICBnYWluMTk6ICcwJwog
ICAgZ2FpbjI6ICcwJwogICAgZ2FpbjIwOiAnMCcKICAgIGdhaW4yMTogJzAnCiAgICBnYWlu
MjI6ICcwJwogICAgZ2FpbjIzOiAnMCcKICAgIGdhaW4yNDogJzAnCiAgICBnYWluMjU6ICcw
JwogICAgZ2FpbjI2OiAnMCcKICAgIGdhaW4yNzogJzAnCiAgICBnYWluMjg6ICcwJwogICAg
Z2FpbjI5OiAnMCcKICAgIGdhaW4zOiAnMCcKICAgIGdhaW4zMDogJzAnCiAgICBnYWluMzE6
ICcwJwogICAgZ2FpbjQ6ICcwJwogICAgZ2FpbjU6ICcwJwogICAgZ2FpbjY6ICcwJwogICAg
Z2Fpbjc6ICcwJwogICAgZ2Fpbjg6ICcwJwogICAgZ2Fpbjk6ICcwJwogICAgZ2Fpbl90eXBl
MDogbm9ybWFsaXplZAogICAgZ2Fpbl90eXBlMTogZGVmYXVsdAogICAgZ2Fpbl90eXBlMTA6
IGRlZmF1bHQKICAgIGdhaW5fdHlwZTExOiBkZWZhdWx0CiAgICBnYWluX3R5cGUxMjogZGVm
YXVsdAogICAgZ2Fpbl90eXBlMTM6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTE0OiBkZWZhdWx0
CiAgICBnYWluX3R5cGUxNTogZGVmYXVsdAogICAgZ2Fpbl90eXBlMTY6IGRlZmF1bHQKICAg
IGdhaW5fdHlwZTE3OiBkZWZhdWx0CiAgICBnYWluX3R5cGUxODogZGVmYXVsdAogICAgZ2Fp
bl90eXBlMTk6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTI6IGRlZmF1bHQKICAgIGdhaW5fdHlw
ZTIwOiBkZWZhdWx0CiAgICBnYWluX3R5cGUyMTogZGVmYXVsdAogICAgZ2Fpbl90eXBlMjI6
IGRlZmF1bHQKICAgIGdhaW5fdHlwZTIzOiBkZWZhdWx0CiAgICBnYWluX3R5cGUyNDogZGVm
YXVsdAogICAgZ2Fpbl90eXBlMjU6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTI2OiBkZWZhdWx0
CiAgICBnYWluX3R5cGUyNzogZGVmYXVsdAogICAgZ2Fpbl90eXBlMjg6IGRlZmF1bHQKICAg
IGdhaW5fdHlwZTI5OiBkZWZhdWx0CiAgICBnYWluX3R5cGUzOiBkZWZhdWx0CiAgICBnYWlu
X3R5cGUzMDogZGVmYXVsdAogICAgZ2Fpbl90eXBlMzE6IGRlZmF1bHQKICAgIGdhaW5fdHlw
ZTQ6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTU6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTY6IGRl
ZmF1bHQKICAgIGdhaW5fdHlwZTc6IGRlZmF1bHQKICAgIGdhaW5fdHlwZTg6IGRlZmF1bHQK
ICAgIGdhaW5fdHlwZTk6IGRlZmF1bHQKICAgIGxlbl90YWdfbmFtZTogJyIiJwogICAgbG9f
ZXhwb3J0MDogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MTogJ0ZhbHNlJwogICAgbG9fZXhwb3J0
MTA6ICdGYWxzZScKICAgIGxvX2V4cG9ydDExOiAnRmFsc2UnCiAgICBsb19leHBvcnQxMjog
J0ZhbHNlJwogICAgbG9fZXhwb3J0MTM6ICdGYWxzZScKICAgIGxvX2V4cG9ydDE0OiAnRmFs
c2UnCiAgICBsb19leHBvcnQxNTogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MTY6ICdGYWxzZScK
ICAgIGxvX2V4cG9ydDE3OiAnRmFsc2UnCiAgICBsb19leHBvcnQxODogJ0ZhbHNlJwogICAg
bG9fZXhwb3J0MTk6ICdGYWxzZScKICAgIGxvX2V4cG9ydDI6ICdGYWxzZScKICAgIGxvX2V4
cG9ydDIwOiAnRmFsc2UnCiAgICBsb19leHBvcnQyMTogJ0ZhbHNlJwogICAgbG9fZXhwb3J0
MjI6ICdGYWxzZScKICAgIGxvX2V4cG9ydDIzOiAnRmFsc2UnCiAgICBsb19leHBvcnQyNDog
J0ZhbHNlJwogICAgbG9fZXhwb3J0MjU6ICdGYWxzZScKICAgIGxvX2V4cG9ydDI2OiAnRmFs
c2UnCiAgICBsb19leHBvcnQyNzogJ0ZhbHNlJwogICAgbG9fZXhwb3J0Mjg6ICdGYWxzZScK
ICAgIGxvX2V4cG9ydDI5OiAnRmFsc2UnCiAgICBsb19leHBvcnQzOiAnRmFsc2UnCiAgICBs
b19leHBvcnQzMDogJ0ZhbHNlJwogICAgbG9fZXhwb3J0MzE6ICdGYWxzZScKICAgIGxvX2V4
cG9ydDQ6ICdGYWxzZScKICAgIGxvX2V4cG9ydDU6ICdGYWxzZScKICAgIGxvX2V4cG9ydDY6
ICdGYWxzZScKICAgIGxvX2V4cG9ydDc6ICdGYWxzZScKICAgIGxvX2V4cG9ydDg6ICdGYWxz
ZScKICAgIGxvX2V4cG9ydDk6ICdGYWxzZScKICAgIGxvX3NvdXJjZTA6IGludGVybmFsCiAg
ICBsb19zb3VyY2UxOiBpbnRlcm5hbAogICAgbG9fc291cmNlMTA6IGludGVybmFsCiAgICBs
b19zb3VyY2UxMTogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTEyOiBpbnRlcm5hbAogICAgbG9f
c291cmNlMTM6IGludGVybmFsCiAgICBsb19zb3VyY2UxNDogaW50ZXJuYWwKICAgIGxvX3Nv
dXJjZTE1OiBpbnRlcm5hbAogICAgbG9fc291cmNlMTY6IGludGVybmFsCiAgICBsb19zb3Vy
Y2UxNzogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTE4OiBpbnRlcm5hbAogICAgbG9fc291cmNl
MTk6IGludGVybmFsCiAgICBsb19zb3VyY2UyOiBpbnRlcm5hbAogICAgbG9fc291cmNlMjA6
IGludGVybmFsCiAgICBsb19zb3VyY2UyMTogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTIyOiBp
bnRlcm5hbAogICAgbG9fc291cmNlMjM6IGludGVybmFsCiAgICBsb19zb3VyY2UyNDogaW50
ZXJuYWwKICAgIGxvX3NvdXJjZTI1OiBpbnRlcm5hbAogICAgbG9fc291cmNlMjY6IGludGVy
bmFsCiAgICBsb19zb3VyY2UyNzogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTI4OiBpbnRlcm5h
bAogICAgbG9fc291cmNlMjk6IGludGVybmFsCiAgICBsb19zb3VyY2UzOiBpbnRlcm5hbAog
ICAgbG9fc291cmNlMzA6IGludGVybmFsCiAgICBsb19zb3VyY2UzMTogaW50ZXJuYWwKICAg
IGxvX3NvdXJjZTQ6IGludGVybmFsCiAgICBsb19zb3VyY2U1OiBpbnRlcm5hbAogICAgbG9f
c291cmNlNjogaW50ZXJuYWwKICAgIGxvX3NvdXJjZTc6IGludGVybmFsCiAgICBsb19zb3Vy
Y2U4OiBpbnRlcm5hbAogICAgbG9fc291cmNlOTogaW50ZXJuYWwKICAgIG1heG91dGJ1Zjog
JzAnCiAgICBtaW5vdXRidWY6ICcwJwogICAgbmNoYW46ICcxJwogICAgbnVtX21ib2FyZHM6
ICcxJwogICAgb3R3OiAnJwogICAgc2FtcF9yYXRlOiBzYW1wX3JhdGUKICAgIHNkX3NwZWMw
OiAnJwogICAgc2Rfc3BlYzE6ICcnCiAgICBzZF9zcGVjMjogJycKICAgIHNkX3NwZWMzOiAn
JwogICAgc2Rfc3BlYzQ6ICcnCiAgICBzZF9zcGVjNTogJycKICAgIHNkX3NwZWM2OiAnJwog
ICAgc2Rfc3BlYzc6ICcnCiAgICBzaG93X2xvX2NvbnRyb2xzOiAnRmFsc2UnCiAgICBzdGFy
dF90aW1lOiAnLTEuMCcKICAgIHN0cmVhbV9hcmdzOiAnJwogICAgc3RyZWFtX2NoYW5zOiAn
W10nCiAgICBzeW5jOiBzeW5jCiAgICB0aW1lX3NvdXJjZTA6ICcnCiAgICB0aW1lX3NvdXJj
ZTE6ICcnCiAgICB0aW1lX3NvdXJjZTI6ICcnCiAgICB0aW1lX3NvdXJjZTM6ICcnCiAgICB0
aW1lX3NvdXJjZTQ6ICcnCiAgICB0aW1lX3NvdXJjZTU6ICcnCiAgICB0aW1lX3NvdXJjZTY6
ICcnCiAgICB0aW1lX3NvdXJjZTc6ICcnCiAgICB0eXBlOiBmYzMyCiAgc3RhdGVzOgogICAg
YnVzX3Npbms6IGZhbHNlCiAgICBidXNfc291cmNlOiBmYWxzZQogICAgYnVzX3N0cnVjdHVy
ZTogbnVsbAogICAgY29vcmRpbmF0ZTogWzEwNDAsIDQwNC4wXQogICAgcm90YXRpb246IDAK
ICAgIHN0YXRlOiB0cnVlCgpjb25uZWN0aW9uczoKLSBbYW5hbG9nX25vaXNlX3NvdXJjZV94
XzAsICcwJywgdWhkX3VzcnBfc2lua18wLCAnMCddCgptZXRhZGF0YToKICBmaWxlX2Zvcm1h
dDogMQo=
--------------B03993274150123D7868758C
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--------------B03993274150123D7868758C--
