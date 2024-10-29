Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 078749B468B
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 11:17:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0EF2A386544
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 06:17:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730197048; bh=uzdMB7A/rORSgKn5/r11HrjJs+ZFXERCzrE+PhCBRI4=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=r2rxFAaCk59iOOn3NRhVYnIUFCuGNLJmphT8xq5Y8YiCjaI/y2xx+lHJqt5MQHsjY
	 dwTj/PNxAuNyUwNqwLMfu2OrPpQtlzfJXTrYnIsiIDqRd5qL3sebJ8znNYCm7v8jp3
	 uWSHr7UblxGy0LpbSUqIA0O+l/I2P4IzlOaLIHb5eyXbkX2JJtxpg0u1BKjzACU97K
	 0exL3ReExzBkQ3rshfd/IEQNj5c2euJaFLEX6ND7y//bwMsuDc51fgRzP3XpYxzkL8
	 6zdwwiLBhFEdrKyQvdXOYtPkPs2ld1wGEeRNIxfAeNo8/y9OCAs0aDRu1jwZZj5Pr2
	 bq7K2mo+uxzVQ==
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id E52533864E2
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 06:17:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NPI4yvIl";
	dkim-atps=neutral
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f58c68c5so8710723e87.3
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 03:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730197031; x=1730801831; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LbusCOjzm+Q1+VOr+Sidh6EdRf+OIIIW4frLBxgbDtw=;
        b=NPI4yvIlWTPYn3VzwkS8dAZ9WFf1BUHGaOWf1DQ9AUhh04gIKLgc8hJTpoBbz7HK6Z
         8ArEGDPCZBitlL//myfLvgUcdjbV6q79AcoX4TZ9OX6xwHH3A+buV+Ewl72gWzWEZlXl
         kMBwjKvFdfsl+hXkOasseIE0gZzJ5bhM3kyFUBZyhZIH5WzAtSouxG5u1PHsg2cFVhxH
         YdoIXc5N0nbj1coIQtuvhMW8itI6QeMsvGPhXHcDEdx4sYKikrzocRKMJ5Ng2kbooW+D
         HlruZP5caqFhJ3B5VMqKQO+4QBlmyz4qy8zt++vYJg+chrmmTG9FHrmyT7kKoudUdQ5f
         Qsuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730197031; x=1730801831;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LbusCOjzm+Q1+VOr+Sidh6EdRf+OIIIW4frLBxgbDtw=;
        b=KOv8Mj5O1Mh4faAth0mUaHV1aZKDpKMJaQzsuUb1xNd3Jj9Bqo8DZZnOTjRXM7hUBu
         DrAKSM9toyX5TaQcXAAx9Qma9I7tIREITnJo1/+otNfbnEXGiJkBTg0O2DotPVFLg5l2
         X9teXaBJQNQQP6WKpL3KVbqm9/VZruuFNLhG9g5VP1Ksdnv3zCh9UoSeQRLR4dK/rUzZ
         tDb2Anhka2uNNgfkR9WFV5y7wQLkNsavXt3Te+Epmwa+O18yssA4Uf/1XQ9kQKZRvOVt
         +30U7xwrL8dvxMEID2kdxrJQC3ru+v/WK/K9qR4vXqd7s0NokJKBQWEK51xhvhTZhqfi
         TEkg==
X-Gm-Message-State: AOJu0YyC/jf0f/9awa/6zjNtYBLaIZ5SnfROUVMS4wHDt7Uu1JElVVmw
	ZEpXc0rEwS0a2mJ9x9jmFjA93VI6yfFDZi1HKxVsVvM6OuBXmWQ6ATPHIoFfgdNEerebxtRdoq0
	7Nf3b/iYYasIxhE7SfT7AeK+rfPx7wM8wJh0=
X-Google-Smtp-Source: AGHT+IHDQ6CzKVQaX/7C86mmv0sbR6PZM4RoKId/glNjkjizFRt2DNav/6ucMnytUDvFFtkpJxvrzVr1ruvTtDODUYE=
X-Received: by 2002:a05:6512:a87:b0:53a:7e:bcc5 with SMTP id
 2adb3069b0e04-53b348ba137mr9321850e87.9.1730197030721; Tue, 29 Oct 2024
 03:17:10 -0700 (PDT)
MIME-Version: 1.0
From: hui cj <cjh416593819@gmail.com>
Date: Tue, 29 Oct 2024 18:16:59 +0800
Message-ID: <CAEL-RA2ktm+znO+NGjGYLxCeR3pX4svUvUT_U+n34RDuxJOcxg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: QAEEBZ5T7XXLCAHP2KV35FVOB4BN5W4Y
X-Message-ID-Hash: QAEEBZ5T7XXLCAHP2KV35FVOB4BN5W4Y
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using USRP X310 Front GPIO as SPI Interface (UHD Timed Commands)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QAEEBZ5T7XXLCAHP2KV35FVOB4BN5W4Y/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8644545900751941224=="

--===============8644545900751941224==
Content-Type: multipart/alternative; boundary="00000000000068621106259ae311"

--00000000000068621106259ae311
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I built a project that demonstrates how to use the front-panel GPIO pins of
the USRP X310 to emulate an SPI interface. The SPI communication leverages
UHD timed commands and RFNoC blocks to drive GPIO signals at precise
intervals.
But there is a slow performance when I read GPIO values.
If I comment the blue part, the code can generate SCK and SDO up to 2MHz.
But if I add the function of reading gpio, the output clock is slowed down
to 100Hz.

This is weird. Anyone know why?

The code is open source at https://github.com/cjhonlyone/uhd_gpio_spi.

int UhdGpioSpi::write_and_read(uint8_t* write_buffer, uint8_t* read_buffer,
uint32_t length) {

    double spi_period = 1.0 / spi_frequency;
    radio_ctrl->clear_command_time(0);
    uhd::time_spec_t time = radio_ctrl->get_time_now() +
uhd::time_spec_t(0.05);
    time = time + uhd::time_spec_t(spi_period);
    radio_ctrl->set_command_time(time, 0);
    radio_ctrl->set_gpio_attr("FP0", "OUT", (~SDO_MASK) & (~SCS_MASK) &
(cpol ? 0xffffffff : (~SCK_MASK)));

    for (uint32_t i = 0; i < length; i++) {
        for (uint32_t j = 0; j < 8; j++) {
            time = time + uhd::time_spec_t(0.5 * spi_period);
            radio_ctrl->set_command_time(time, 0);
            if ((cpha & cpol) || ((!cpha) & (!cpol))) { // SCK = 0, SCS = 0
                radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] &
(1 << (7 - j))) ? (~SCS_MASK) & (~SCK_MASK) : ((~SCS_MASK) & (~SCK_MASK) &
(~SDO_MASK)));
            } else { // SCK = 1, SCS = 0
                radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] &
(1 << (7 - j))) ? (~SCS_MASK) : (~SCS_MASK) & (~SDO_MASK));
            }

            time = time + uhd::time_spec_t(0.5 * spi_period);
            radio_ctrl->set_command_time(time, 0);
            if ((cpha & cpol) || ((!cpha) & (!cpol))) { // SCK = 1, SCS = 0
                radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] &
(1 << (7 - j))) ? (~SCS_MASK) : (~SCS_MASK) & (~SDO_MASK));
            } else { // SCK = 0, SCS = 0
                radio_ctrl->set_gpio_attr("FP0", "OUT", (write_buffer[i] &
(1 << (7 - j))) ? (~SCS_MASK) & (~SCK_MASK) : ((~SCS_MASK) & (~SCK_MASK) &
(~SDO_MASK)));
            }

//            radio_ctrl->set_command_time(time, 0);
//            if (radio_ctrl->get_gpio_attr("FP0", "READBACK") & SDI_MASK)
//                read_buffer[i] |= (1 << (7 - j));
//            if (j < 7) read_buffer[i] <<= 1;
        }

        // nop
        time = time + uhd::time_spec_t(0.5*spi_period);
        radio_ctrl->set_command_time(time, 0);
        radio_ctrl->set_gpio_attr("FP0", "OUT", (~SDO_MASK) & (~SCS_MASK) &
(cpol ? 0xffffffff : (~SCK_MASK)));

    }

    time = time + uhd::time_spec_t(spi_period);
    radio_ctrl->set_command_time(time, 0);
    radio_ctrl->set_gpio_attr("FP0", "OUT", SCS_MASK | (cpol ? SCK_MASK :
0x00000000));

    return 0;
}

--00000000000068621106259ae311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"box-sizing:border-box;margin-=
top:0px;color:rgb(31,35,40);font-family:-apple-system,BlinkMacSystemFont,&q=
uot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;A=
pple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px">Hi everyo=
ne,</p><p dir=3D"auto" style=3D"box-sizing:border-box;margin-top:0px;color:=
rgb(31,35,40);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&q=
uot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emo=
ji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px">I built a project that =
demonstrates how to use the front-panel GPIO pins of the USRP X310 to emula=
te an SPI interface. The SPI communication leverages UHD timed commands and=
 RFNoC blocks to drive GPIO signals at precise intervals.</p><div style=3D"=
box-sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,BlinkMa=
cSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans=
-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:1=
6px">But there is a slow performance when I read GPIO values.</div><div sty=
le=3D"box-sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,B=
linkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Aria=
l,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-=
size:16px">If I comment the blue part, the code can generate SCK and SDO up=
 to 2MHz.<br>But if I add the function of reading gpio, the output clock is=
 slowed down to 100Hz.</div><div style=3D"box-sizing:border-box;color:rgb(3=
1,35,40);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,=
&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&qu=
ot;,&quot;Segoe UI Emoji&quot;;font-size:16px"><br></div><div style=3D"box-=
sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,BlinkMacSys=
temFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-ser=
if,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px"=
>This is weird. Anyone know why?</div><div style=3D"box-sizing:border-box;c=
olor:rgb(31,35,40);font-family:-apple-system,BlinkMacSystemFont,&quot;Segoe=
 UI&quot;,&quot;Noto Sans&quot;,Helvetica,Arial,sans-serif,&quot;Apple Colo=
r Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-size:16px"><br></div><div sty=
le=3D"box-sizing:border-box;color:rgb(31,35,40);font-family:-apple-system,B=
linkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helvetica,Aria=
l,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;;font-=
size:16px">The code is open source at=C2=A0<a href=3D"https://github.com/cj=
honlyone/uhd_gpio_spi">https://github.com/cjhonlyone/uhd_gpio_spi</a>.</div=
><div style=3D"box-sizing:border-box;color:rgb(31,35,40);font-family:-apple=
-system,BlinkMacSystemFont,&quot;Segoe UI&quot;,&quot;Noto Sans&quot;,Helve=
tica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&qu=
ot;;font-size:16px"><br></div><div style=3D"box-sizing:border-box"><font si=
ze=3D"1" style=3D"" face=3D"monospace"><font color=3D"#ff0000">int UhdGpioS=
pi::write_and_read(uint8_t* write_buffer, uint8_t* read_buffer, uint32_t le=
ngth) {</font><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 double spi_peri=
od =3D 1.0 / spi_frequency;</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0=
 radio_ctrl-&gt;clear_command_time(0);</font><br><font color=3D"#ff0000">=
=C2=A0 =C2=A0 uhd::time_spec_t time =3D radio_ctrl-&gt;get_time_now() + uhd=
::time_spec_t(0.05);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 time =
=3D time + uhd::time_spec_t(spi_period);</font><br><font color=3D"#ff0000">=
=C2=A0 =C2=A0 radio_ctrl-&gt;set_command_time(time, 0);</font><br><font col=
or=3D"#ff0000">=C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot;, =
&quot;OUT&quot;, (~SDO_MASK) &amp; (~SCS_MASK) &amp; (cpol ? 0xffffffff : (=
~SCK_MASK)));</font><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 for (uint=
32_t i =3D 0; i &lt; length; i++) {</font><br><font color=3D"#ff0000">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 for (uint32_t j =3D 0; j &lt; 8; j++) {</font><br>=
<font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time =3D =
time + uhd::time_spec_t(0.5 * spi_period);</font><br><font color=3D"#ff0000=
">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_command_time=
(time, 0);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if ((cpha &amp; cpol) || ((!cpha) &amp; (!cpol))) { // SCK =
=3D 0, SCS =3D 0</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot=
;, &quot;OUT&quot;, (write_buffer[i] &amp; (1 &lt;&lt; (7 - j))) ? (~SCS_MA=
SK) &amp; (~SCK_MASK) : ((~SCS_MASK) &amp; (~SCK_MASK) &amp; (~SDO_MASK)));=
</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 } else { // SCK =3D 1, SCS =3D 0</font><br><font color=3D"#ff0000">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpi=
o_attr(&quot;FP0&quot;, &quot;OUT&quot;, (write_buffer[i] &amp; (1 &lt;&lt;=
 (7 - j))) ? (~SCS_MASK) : (~SCS_MASK) &amp; (~SDO_MASK));</font><br><font =
color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font><br><br=
><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time =3D=
 time + uhd::time_spec_t(0.5 * spi_period);</font><br><font color=3D"#ff000=
0">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_command_tim=
e(time, 0);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 if ((cpha &amp; cpol) || ((!cpha) &amp; (!cpol))) { // SCK =
=3D 1, SCS =3D 0</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot=
;, &quot;OUT&quot;, (write_buffer[i] &amp; (1 &lt;&lt; (7 - j))) ? (~SCS_MA=
SK) : (~SCS_MASK) &amp; (~SDO_MASK));</font><br><font color=3D"#ff0000">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 } else { // SCK =3D 0, SCS =3D 0</fo=
nt><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;=
, (write_buffer[i] &amp; (1 &lt;&lt; (7 - j))) ? (~SCS_MASK) &amp; (~SCK_MA=
SK) : ((~SCS_MASK) &amp; (~SCK_MASK) &amp; (~SDO_MASK)));</font><br><font c=
olor=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font><br><br>=
<font color=3D"#0000ff">// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0radio_c=
trl-&gt;set_command_time(time, 0);<br>// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (radio_ctrl-&gt;get_gpio_attr(&quot;FP0&quot;, &quot;READBACK&quo=
t;) &amp; SDI_MASK)<br>// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0read_buffer[i] |=3D (1 &lt;&lt; (7 - j));<br>// =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0if (j &lt; 7) read_buffer[i] &lt;&lt;=3D 1;</font><br><=
font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font><br><br><font co=
lor=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 // nop</font><br><font color=3D=
"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 time =3D time + uhd::time_spec_t(0.5*=
spi_period);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
radio_ctrl-&gt;set_command_time(time, 0);</font><br><font color=3D"#ff0000"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot;, =
&quot;OUT&quot;, (~SDO_MASK) &amp; (~SCS_MASK) &amp; (cpol ? 0xffffffff : (=
~SCK_MASK)));</font><br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 }</font><=
br><br><font color=3D"#ff0000">=C2=A0 =C2=A0 time =3D time + uhd::time_spec=
_t(spi_period);</font><br><font color=3D"#ff0000">=C2=A0 =C2=A0 radio_ctrl-=
&gt;set_command_time(time, 0);</font><br><font color=3D"#ff0000">=C2=A0 =C2=
=A0 radio_ctrl-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;, SCS_MASK=
 | (cpol ? SCK_MASK : 0x00000000));</font><br><br><font color=3D"#ff0000">=
=C2=A0 =C2=A0 return 0;</font><br><font color=3D"#ff0000">}</font></font></=
div></div>
</div>

--00000000000068621106259ae311--

--===============8644545900751941224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8644545900751941224==--
