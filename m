Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAPGHLoB3Wk3YwkAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2026 16:46:18 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3A53ED7C1
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2026 16:46:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0CF3538599E
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2026 10:46:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776091576; bh=KNm1sqfAEG0yLuZbKtKpsHfM6s1A2g4k/QcQZH83YY0=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=rPuRW/UBtaN53K/DD0NASfMpKwpF2jd1+xIWf8kK87tD5LnOO+p8oe/iDrRAqtLP4
	 usGUlNNvKq1ze+C23L7A/pthOC5IplSSqb7LMX4F8jGTXgDM48JfyiVvHvQ+JTsoLy
	 vbeDk11xmI4yOGVnYbABljvqyMllflOD2PE/8dwhaZrQQGNkdzgBfrMosp8as+g/rX
	 YhBtvqYlqpxmHO+/McKwIEXQtdCNy1/gyuWIMjJfxFWxkFKByEtmXFEBFXGc6FKwqZ
	 5z3HyNIbLuhZ37ydaetfip4JMx9/1bRC4au1S+EthyVgktgFUEYhne42nZqLD+IwkF
	 QvD+1vJAYOdyg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id EF3BD38599E
	for <usrp-users@lists.ettus.com>; Mon, 13 Apr 2026 10:45:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MfrEb5KP";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-50d876329bbso48324951cf.2
        for <usrp-users@lists.ettus.com>; Mon, 13 Apr 2026 07:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776091540; x=1776696340; darn=lists.ettus.com;
        h=user-agent:references:in-reply-to:cc:to:from:subject:message-id
         :date:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FBvkf+F9OepPQxrbel4/z/1I3xFm9b5sOgl0ojYyaxg=;
        b=MfrEb5KPmYwcn7No5j9ByjoyUFwyQtbVmw+KCkADUEU1LXzKb0dvn8EjTQ4K07qHJX
         pw2Jk7/QLyuDoRCBUBoadIywo5Hprc/yXCvslv4dIEBTvKMGJDZndXJ6+0m221MxOZ3T
         /xKr1NDdnFtjwrFPn+Waw+HmDGyWmabYKh4WkuRgU3yMFo3Fcz9q1RSstUBwfPVgXwzG
         EFoMPyUE4L1DJnfKMO1Fi4KOSp7AwOEJPgAHq0prdtb9QfW8LUeRZ29pnFylZZj3AgpP
         jb3Ga2P+jgAoh6DfLbfQUGHF7hHuy/hYmiBTTBVgRSqZo6MqWRz5apfpnngf1iJDAL2a
         Ietw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776091540; x=1776696340;
        h=user-agent:references:in-reply-to:cc:to:from:subject:message-id
         :date:mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FBvkf+F9OepPQxrbel4/z/1I3xFm9b5sOgl0ojYyaxg=;
        b=DwnPXMKXi9VTRtzCbVP+U35QzpvxqVQA5cC5IzoyR1m/wHxAkTLWr2SJ5sCVFuf3Tw
         fg1IooVrdohMwT0bR+BJ6IG+9A3VZ4aMxMfVsFB0T7ScttHGQWzpMgHCjRZZ4PWvgCnB
         kjDWUW9vQcBZD5D4sYNAbwfyaUboeU0wPAH/GqMwfLzuhJtN60Pb5X0PnJvI5WI5vnPb
         DA7NrZ6VImmcKzqrrtOnPQ1Bg4z87xNWR22gye2IJ3jJbM4+BZrKHcA9EV7+G+PcWTK0
         cKesDDcvln9hyJaiKIFSalmFfVqxWBQIdzAtGgl3/ZaicjFr+ukP5KPhIyXNiisZ7+cJ
         rvzw==
X-Gm-Message-State: AOJu0YyGm8aCySsScXgoT5uNxub0qKexjpfgJd9abCuUUN4M9w9D8U2b
	Z0cQvGiEgrXOdKKS2Nx/kpbWRx47HG2KJq2Z6HT6K9pNYK5F4AdUPvA01Euv3A==
X-Gm-Gg: AeBDiesBfyKjXRrIknGmQzwiLldn6E3MEgBOC7ssxLStPT/2pdCB4qAvPuarugR6UdQ
	haSHuvVwFIVfq5ggfXwkvISiwC19LQRnjqboJ3LyV7IOV6smXNEyNDQGOCF/kk6CQBqZ0tKAkBO
	lpHh/plI2zFADMq1scHYFZqcCFf0eh6LolcLrsBGipAmnWa8A7d1+dAMIO/DquhtkI0yutFaOQh
	c1+Cq9Yfwdj7nYuuS1XuUx7hFDobfQNJkxKJYUZpuqeIHK4DoVh4dGlbPVsQGVOXzzq9FAL+LLp
	uyjfo0lkscepTkW3MIj5LGH0ptcls7PaYDdEK8Dibki2pwGjAudMsuhLjJ+M/deCLmaAbzWR+yv
	NPufxaymZcOF54gYQePF4jQZCfDNlIlALSpZ6ueeFzZc+OXnAQkpGe4GQ/rS80s4oZrs1A5fVLm
	s9UuDnmXDtrID1jN/A/ytv+MAtnmKd5SqskZo1zA==
X-Received: by 2002:a05:622a:141:b0:50d:8080:2a7 with SMTP id d75a77b69052e-50dd5adb7a6mr211065711cf.21.1776091539728;
        Mon, 13 Apr 2026 07:45:39 -0700 (PDT)
Received: from [192.168.5.59] ([47.186.162.138])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-50df2f4fa51sm39804041cf.5.2026.04.13.07.45.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2026 07:45:39 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 13 Apr 2026 09:45:17 -0500
Message-ID: <Mailbird-ffd27942-a577-4803-8137-f6ba7ade0634@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "Martin Braun" <martin.braun@ettus.com>
In-Reply-To: <CAFOi1A5Z2WcvQky3kd7nuv8fDgf0M0HLj_hHzurrdzXSg6hFkA@mail.gmail.com>
References: <Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com>
 <CAFOi1A4aVMq5-cs6=ZtMSSeEzfZS-tD2tJim_Ew=OeQzkrdcAw@mail.gmail.com>
 <Mailbird-ea503f2a-55f3-4750-a9a3-215f6b514efe@gmail.com>
 <CAFOi1A5Z2WcvQky3kd7nuv8fDgf0M0HLj_hHzurrdzXSg6hFkA@mail.gmail.com>
User-Agent: Mailbird/3.0.53.0
X-Mailbird-ID: Mailbird-ffd27942-a577-4803-8137-f6ba7ade0634@gmail.com
Message-ID-Hash: 4CAANBFGA4CBOIRZG4E23W5VOSYDWGHD
X-Message-ID-Hash: 4CAANBFGA4CBOIRZG4E23W5VOSYDWGHD
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 GPIO SPI support using UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4CAANBFGA4CBOIRZG4E23W5VOSYDWGHD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3070602766835102406=="
X-Spamd-Result: default: False [-0.41 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	R_SPF_NA(0.00)[no SPF record];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[pageheller@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[youtu.be:url,ettus.com:email,9i:email,emwd.com:dkim,mm2.emwd.com:helo,mm2.emwd.com:rdns,uhd.readthedocs.io:url]
X-Rspamd-Queue-Id: 7F3A53ED7C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============3070602766835102406==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_28311920.707663269946"

------=_NextPart_28311920.707663269946
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Good advice. Thanks, Martin. I didn't actually know that there were separat=
e .bashrc settings. I'm with you, though, in preferring to run as user, so =
I'll see if I can set up the proper group first. -p
On 4/13/2026 4:17:42 AM, Martin Braun <martin.braun@ettus.com> wrote:
Hey Page,

The sudo issue points to the library path not being picked up correctly for=
 root, or maybe python not finding the installed packages there. So you mig=
ht want to change root's bashrc, not the user's.


For the permission denied error when running as user, you'll likely need to=
 add your user to the 'gpio' group or ensure the necessary permissions are =
set on /dev/gpiochip0. What group is that device owned by? Personally, I pr=
efer this option (giving users access to the Pi's GPIOs).

It's worth pointing out (to future readers of this thread) that the GPIO-pr=
ogramming on your Pi is unrelated to the GPIO programming of the USRP itsel=
f.

--M

On Fri, Apr 10, 2026 at 4:49 PM page heller <pageheller@gmail.com [mailto:p=
ageheller@gmail.com]> wrote:

Martin, thanks for your hints. I had indeed watched the video on the gpio p=
ins. The only difference I see is that I am trying to use the Python API to=
 read the pins. I have a question on permissions as I get underway here.

If I run my python3 program as the user, I get a permission-denied error wh=
en retrieving the chip0 name. If I run it as super user, it can't fund uhd =
to import. I read through a number of recommendations, and decided defining=
 PATHs in ./basrc was the way to solve this. But, with the paths I show bel=
ow, the same errors occur. I am not using a virtual environment since this =
is a dedicated machine for a single purpose/single user. -page
Linux 6.17.0-14-generic
Ubuntu 24.04.4 LTS
Python 3.12.3
uhd 4.9.0


user@9i:~$ python3 b210_get_time6_bitbang.py
gpiochip0 0 2 6 1e-05
192
Traceback (most recent call last):
File "/home/endpoint/b210_get_time6_bitbang.py", line 77, in <module>
read_spi(args.chip, args.clk, args.cs, args.mosi, args.bits, args.half_peri=
od)
File "/home/endpoint/b210_get_time6_bitbang.py", line 10, in read_spi
chip =3D gpiod.Chip(chip_name)
^^^^^^^^^^^^^^^^^^^^^
PermissionError: [Errno 13] Permission denied


user@9i:~$ sudo python3 b210_get_time6_bitbang.py
Traceback (most recent call last):
File "/home/endpoint/b210_get_time6_bitbang.py", line 5, in <module>
import uhd
ModuleNotFoundError: No module named 'uhd'



user@9i:~$ ls /usr/local/include
uhd uhd.h
user@9i:~$ ls /usr/local/include/uhd
build_info.hpp device.hpp features stream.hpp utils
cal error.h property_tree.hpp transport version.h
config.h exception.hpp property_tree.ipp types version.hpp
config.hpp experts rfnoc usrp
convert.hpp extension rfnoc_graph.hpp usrp_clock
user@9i:~$ ls /usr/local/lib
cmake libuhd.so libuhd.so.4.9.0 pkgconfig python3.12 uhd



user@9i:~$ sudo nano .bashrc
=E2=80=A6
# set up uhd
export LD_LIBRARY_PATH=3D/usr/local/lib/
export LD_LIBRARY_PATH=3D/usr/local/include/:$LD_LIBRARY_PATH
export PYTHONPATH=3D/usr/local/lib/python3.12/site-packages/:$PYTHONPATH

On 2/19/2026 2:48:28 AM, Martin Braun <martin.braun@ettus.com [mailto:marti=
n.braun@ettus.com]> wrote:
Hi Page,

I'm not sure where you got the 3.3V info from, but this section in the manu=
al shows the pins:

https://uhd.readthedocs.io/en/latest/page_usrp_b200.html#b200_switches [htt=
ps://uhd.readthedocs.io/en/latest/page_usrp_b200.html#b200_switches]

From here, this is the pinout: 1=3DGPIO_0, 2=3DGPIO_1, 3=3DGPIO_2, 4=3DGPIO=
_3, 5=3DGPIO_4, 6=3DGPIO_5, 7=3DGPIO_6, 8=3DGPIO_7, 9=3DGND, 10=3DGND

Make sure you share a ground pin with your Pi Zero.

If you're just reading pins, follow the manual for set_gpio_attr() (https:/=
/uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#a57f25d1=
18d20311aca261e6dd252625e [https://uhd.readthedocs.io/en/latest/classuhd_1_=
1usrp_1_1multi__usrp.html#a57f25d118d20311aca261e6dd252625e]) to do the fol=
lowing:
* Set desired pins CTRL to 0 (GPIO mode)
* Set DDR to 0 (input)
* Call get_gpio_attr() on the READBACK attribute. You will get all 8 pins b=
ack, not just the ones you set to input (the others will be whatever their =
state is).
You're right that the manual page for the GPIO API does not spell out B210 =
specifically, but everything there also applies to B210: https://uhd.readth=
edocs.io/en/latest/page_gpio_api.html [https://uhd.readthedocs.io/en/latest=
/page_gpio_api.html]

Start slowly, without SPI, and read back known pin values. Then, poll the G=
PIO bank more quickly to get your bit-banging functionality.

While this does not specifically talk about reading GPIOs, it maybe also be=
 useful: https://youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv [https://youtu.=
be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv]

--M



On Thu, Feb 12, 2026 at 7:43 PM page heller <pageheller@gmail.com [mailto:p=
ageheller@gmail.com]> wrote:

I am struggling with the GPIO on the Ettus B210 (J504). I am connecting it =
to a Raspberry Pi Zero acting as the Master for SPI communications, sending=
 the chip select and clock to the B210. The loopback test on the Pi is succ=
essful. The NI-provided Python example code on the B210 side appears to 'ge=
t' (read) the pins on J504. Disconnected I see the chip select signal go lo=
w and back high, but when I connect it to J504, the software to 'get' the p=
in doesn't change (same code, but in a for-loop). I'm using pin 1 as the ch=
ip select, 3 for clock, 6 for MOSI. I'm not using MISO.

Some references on line suggest that pin 1 is an output on J504 of 3.3V pow=
er, but, I don't think so. It most certainly is not 3.3V and appears to be =
just like the other pins.

I need some help. I've invested about ten hours trying a number of differen=
t methods and code examples. I've tried getting SPI to work, but the docume=
ntation is so poor, I can only guess on the actual implementation. When tha=
t didn't work, I went to bit-banging; also with no success. I'm just sendin=
g datetime from the pi to the B210 to synch them (doesn't have to be exact,=
 just within hundreds of microseconds). So, I'm only sending a handful of b=
ytes once, so bit-banging is just fine for this application. But, I can't g=
et either the SPI nor the bit-banging to work. If I can't see the pin chang=
e when I use the example 'get' python code, then nothing will work.

I'd love to talk with someone who has transferred data over the B210 GPIO. =
(Am I supposed to call this the NI 2109 now?) Thanks. -page
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com [mailto:usrp-users@li=
sts.ettus.com]
To unsubscribe send an email to usrp-users-leave@lists.ettus.com [mailto:us=
rp-users-leave@lists.ettus.com]

_______________________________________________ USRP-users mailing list -- =
usrp-users@lists.ettus.com [mailto:usrp-users@lists.ettus.com] To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com [mailto:usrp-users-lea=
ve@lists.ettus.com]
------=_NextPart_28311920.707663269946
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #1A1A1A;text-align: left" dir=3D"ltr">
                                        Good advice. Thanks, Martin. I didn=
't actually know that there were separate .bashrc settings. I'm with you, t=
hough, in preferring to run as user, so I'll see if I can set up the proper=
 group first. -p<blockquote class=3D'history_container' type=3D'cite' style=
=3D'border-left-style:solid;border-width:1px; margin-top:20px; margin-left:=
0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 4=
/13/2026 4:17:42 AM, Martin Braun &lt;martin.braun@ettus.com&gt; wrote:</p>=
<div style=3D'font-family:Arial,Helvetica,sans-serif'><div dir=3D"ltr">Hey =
Page,<br><br>The sudo issue points to the library path not being picked up =
correctly for root, or maybe python not finding the installed packages ther=
e. So you might want to change root&#39;s bashrc, not the user&#39;s.<br><b=
r><div>For the permission denied error when running as user, you&#39;ll lik=
ely need to add your user to the &#39;gpio&#39; group or ensure the necessa=
ry permissions are set on /dev/gpiochip0. What group is that device owned b=
y? Personally, I prefer this option (giving users access to the Pi&#39;s GP=
IOs).</div><div><br></div><div>It&#39;s worth pointing out (to future reade=
rs of this thread) that the GPIO-programming on your Pi is unrelated to the=
 GPIO programming of the USRP itself.</div><br>--M</div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Fri, Apr 10, 2026 at 4:49=E2=80=AFPM page heller &lt;<a href=3D"mailto:page=
heller@gmail.com">pageheller@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div><div id=3D"m_-913332898183813855=
8__MailbirdStyleContent" style=3D"font-size: 10pt;font-family: Arial;color:=
 rgb(26,26,26);text-align: left" dir=3D"ltr">
                                        Martin, thanks for your hints. I ha=
d indeed watched the video on the gpio pins. The only difference I see is t=
hat I am trying to use the Python API to read the pins. I have a question o=
n permissions as I get underway here.<div><br></div><div>If I run my python=
3 program as the user, I get a permission-denied error when retrieving the =
chip0 name. If I run it as super user, it can&#39;t fund uhd to import. I r=
ead through a number of recommendations, and decided defining PATHs in ./ba=
src was the way to solve this. But, with the paths I show below, the same e=
rrors occur. I am not using a virtual environment since this is a dedicated=
 machine for a single purpose/single user. -page</div><div><span style=3D"c=
olor: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt=
">Linux 6.17.0-14-generic</span><br style=3D"color: rgb(34,34,34);font-fami=
ly: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(3=
4,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">Ubuntu 24=
.04.4 LTS</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvet=
ica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-fa=
mily: Arial,Helvetica,sans-serif;font-size: 10pt">Python 3.12.3</span><br s=
tyle=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-s=
ize: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica=
,sans-serif;font-size: 10pt">uhd 4.9.0</span></div><div><br style=3D"color:=
 rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><br=
 style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font=
-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helveti=
ca,sans-serif;font-size: 10pt">user@9i:~$ python3 b210_get_time6_bitbang.py=
</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-=
serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Ari=
al,Helvetica,sans-serif;font-size: 10pt">gpiochip0 0 2 6 1e-05</span><br st=
yle=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-si=
ze: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,=
sans-serif;font-size: 10pt">192</span><br style=3D"color: rgb(34,34,34);fon=
t-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color:=
 rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">Tra=
ceback (most recent call last):</span><br style=3D"color: rgb(34,34,34);fon=
t-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color:=
 rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">Fil=
e &quot;/home/endpoint/b210_get_</span><span style=3D"color: rgb(34,34,34);=
font-family: Arial,Helvetica,sans-serif;font-size: 10pt">time6_bitbang.py&q=
uot;, line 77, in &lt;module&gt;</span><br style=3D"color: rgb(34,34,34);fo=
nt-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color=
: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">re=
ad_spi(args.chip, args.clk, args.cs, args.mosi, args.bits, args.half_period=
)</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans=
-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Ar=
ial,Helvetica,sans-serif;font-size: 10pt">File &quot;/home/endpoint/b210_ge=
t_</span><span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,s=
ans-serif;font-size: 10pt">time6_bitbang.py&quot;, line 10, in read_spi</sp=
an><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-seri=
f;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,H=
elvetica,sans-serif;font-size: 10pt">chip =3D gpiod.Chip(chip_name)</span><=
br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;fo=
nt-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helve=
tica,sans-serif;font-size: 10pt">^^^^^^^^^^^^^^^^^^^^^</span><br style=3D"c=
olor: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt=
"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-ser=
if;font-size: 10pt">PermissionError: [Errno 13] Permission denied</span><br=
 style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font=
-size: 10pt"><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica=
,sans-serif;font-size: 10pt"><br style=3D"color: rgb(34,34,34);font-family:=
 Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(34,3=
4,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">user@9i:~$ s=
udo python3 b210_get_time6_bitbang.py</span><br style=3D"color: rgb(34,34,3=
4);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"=
color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10p=
t">Traceback (most recent call last):</span><br style=3D"color: rgb(34,34,3=
4);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"=
color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10p=
t">File &quot;/home/endpoint/b210_get_</span><span style=3D"color: rgb(34,3=
4,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">time6_bitban=
g.py&quot;, line 5, in &lt;module&gt;</span><br style=3D"color: rgb(34,34,3=
4);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"=
color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10p=
t">import uhd</span><br style=3D"color: rgb(34,34,34);font-family: Arial,He=
lvetica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);fon=
t-family: Arial,Helvetica,sans-serif;font-size: 10pt">ModuleNotFoundError: =
No module named &#39;uhd&#39;</span><br style=3D"color: rgb(34,34,34);font-=
family: Arial,Helvetica,sans-serif;font-size: 10pt"><br style=3D"color: rgb=
(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><br sty=
le=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-siz=
e: 10pt"><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,san=
s-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: A=
rial,Helvetica,sans-serif;font-size: 10pt">user@9i:~$ ls /usr/local/include=
</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-=
serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Ari=
al,Helvetica,sans-serif;font-size: 10pt">uhd uhd.h</span><br style=3D"color=
: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><s=
pan style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;f=
ont-size: 10pt">user@9i:~$ ls /usr/local/include/uhd</span><br style=3D"col=
or: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">=
<span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif=
;font-size: 10pt">build_info.hpp device.hpp features stream.hpp utils</span=
><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;=
font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Hel=
vetica,sans-serif;font-size: 10pt">cal error.h property_tree.hpp transport =
version.h</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvet=
ica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-fa=
mily: Arial,Helvetica,sans-serif;font-size: 10pt">config.h exception.hpp pr=
operty_tree.ipp types version.hpp</span><br style=3D"color: rgb(34,34,34);f=
ont-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"colo=
r: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">c=
onfig.hpp experts rfnoc usrp</span><br style=3D"color: rgb(34,34,34);font-f=
amily: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color: rg=
b(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">conver=
t.hpp extension rfnoc_graph.hpp usrp_clock</span><br style=3D"color: rgb(34=
,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span styl=
e=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size=
: 10pt">user@9i:~$ ls /usr/local/lib</span><br style=3D"color: rgb(34,34,34=
);font-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"c=
olor: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt=
">cmake libuhd.so libuhd.so.4.9.0 pkgconfig python3.12 uhd</span><br style=
=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size:=
 10pt"><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-=
serif;font-size: 10pt"><br style=3D"color: rgb(34,34,34);font-family: Arial=
,Helvetica,sans-serif;font-size: 10pt"><br style=3D"color: rgb(34,34,34);fo=
nt-family: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color=
: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">us=
er@9i:~$ sudo nano .bashrc</span><br style=3D"color: rgb(34,34,34);font-fam=
ily: Arial,Helvetica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(=
34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">=E2=80=
=A6</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sa=
ns-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: =
Arial,Helvetica,sans-serif;font-size: 10pt"># set up uhd</span><br style=3D=
"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10=
pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-s=
erif;font-size: 10pt">export LD_LIBRARY_PATH=3D/usr/local/</span><span styl=
e=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-size=
: 10pt">lib/</span><br style=3D"color: rgb(34,34,34);font-family: Arial,Hel=
vetica,sans-serif;font-size: 10pt"><span style=3D"color: rgb(34,34,34);font=
-family: Arial,Helvetica,sans-serif;font-size: 10pt">export LD_LIBRARY_PATH=
=3D/usr/local/</span><span style=3D"color: rgb(34,34,34);font-family: Arial=
,Helvetica,sans-serif;font-size: 10pt">include/:$LD_LIBRARY_PATH</span><br =
style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;font-=
size: 10pt"><span style=3D"color: rgb(34,34,34);font-family: Arial,Helvetic=
a,sans-serif;font-size: 10pt">export PYTHONPATH=3D/usr/local/lib/</span><sp=
an style=3D"color: rgb(34,34,34);font-family: Arial,Helvetica,sans-serif;fo=
nt-size: 10pt">python3.12/site-packages/:$</span><span style=3D"color: rgb(=
34,34,34);font-family: Arial,Helvetica,sans-serif;font-size: 10pt">PYTHONPA=
TH</span></div><div><span style=3D"color: rgb(34,34,34);font-family: Arial,=
Helvetica,sans-serif;font-size: 10pt"><br></span></div><blockquote type=3D"=
cite" style=3D"border-left-style:solid;border-width:1px;margin-top:20px;mar=
gin-left:0px;padding-left:10px">
                        <p style=3D"color:rgb(170,170,170);margin-top:10px"=
>On 2/19/2026 2:48:28 AM, Martin Braun &lt;<a href=3D"mailto:martin.braun@e=
ttus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt; wrote:</p><div s=
tyle=3D"font-family:Arial,Helvetica,sans-serif"><div dir=3D"ltr"><div>Hi Pa=
ge,</div><div><br></div><div>I&#39;m not sure where you got the 3.3V info f=
rom, but this section in the manual shows the pins:</div><div><br></div><di=
v><a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_b200.html#b200_=
switches" target=3D"_blank">https://uhd.readthedocs.io/en/latest/page_usrp_=
b200.html#b200_switches</a></div><div><br></div><div>From here, this is the=
 pinout:=C2=A0
1=3DGPIO_0, 2=3DGPIO_1, 3=3DGPIO_2, 4=3DGPIO_3, 5=3DGPIO_4, 6=3DGPIO_5, 7=
=3DGPIO_6, 8=3DGPIO_7, 9=3DGND, 10=3DGND</div><div><br></div><div>Make sure=
 you share a ground pin with your Pi Zero.</div><div><br></div><div>If you&=
#39;re just reading pins, follow the manual for set_gpio_attr() (<a href=3D=
"https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#=
a57f25d118d20311aca261e6dd252625e" target=3D"_blank">https://uhd.readthedoc=
s.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#a57f25d118d20311aca261e=
6dd252625e</a>) to do the following:</div><div><ul><li>Set desired pins CTR=
L to 0 (GPIO mode)</li><li>Set DDR to 0 (input)</li><li>Call get_gpio_attr(=
) on the READBACK attribute. You will get all 8 pins back, not just the one=
s you set to input (the others will be whatever their state is).</li></ul><=
/div><div>You&#39;re right that the manual page for the GPIO API does not s=
pell out B210 specifically, but everything there also applies to B210: <a h=
ref=3D"https://uhd.readthedocs.io/en/latest/page_gpio_api.html" target=3D"_=
blank">https://uhd.readthedocs.io/en/latest/page_gpio_api.html</a></div><di=
v><br></div><div>Start slowly, without SPI, and read back known pin values.=
 Then, poll the GPIO bank more quickly to get your bit-banging functionalit=
y.</div><div><br></div><div>While this does not specifically talk about rea=
ding GPIOs, it maybe also be useful:=C2=A0<a href=3D"https://youtu.be/ppD06=
ZETnek?si=3DEYGKvF5jfKG9RiGv" target=3D"_blank">https://youtu.be/ppD06ZETne=
k?si=3DEYGKvF5jfKG9RiGv</a></div><div><br></div><div>--M</div><div><br></di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Feb 12, 2026 at 7:43=E2=80=AFPM page heller &lt;<a=
 href=3D"mailto:pageheller@gmail.com" target=3D"_blank">pageheller@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div id=3D"m_-9133328981838138558m_5982087996159542787__MailbirdStyleConte=
nt" style=3D"font-size: 10pt;font-family: Arial;color: rgb(26,26,26);text-a=
lign: left" dir=3D"ltr">I am struggling with the GPIO on the Ettus B210 (J5=
04). I am connecting it to a Raspberry Pi Zero acting as the Master for SPI=
 communications, sending the chip select and clock to the B210. The loopbac=
k test on the Pi is successful. The NI-provided Python example code on the =
B210 side appears to &#39;get&#39; (read) the pins on J504. Disconnected I =
see the chip select signal go low and back high, but when I connect it to J=
504, the software to &#39;get&#39; the pin doesn&#39;t change (same code, b=
ut in a for-loop). I&#39;m using pin 1 as the chip select, 3 for clock, 6 f=
or MOSI. I&#39;m not using MISO.=C2=A0<div><br></div><div>Some references o=
n line suggest that pin 1 is an output on J504 of 3.3V power, but, I don&#3=
9;t think so. It most certainly is not 3.3V and appears to be just like the=
 other pins.</div><div><br></div><div>I need some help. I&#39;ve invested a=
bout ten hours trying a number of different methods and code examples. I&#3=
9;ve tried getting SPI to work, but the documentation is so poor, I can onl=
y guess on the actual implementation. When that didn&#39;t work, I went to =
bit-banging; also with no success. I&#39;m just sending datetime from the p=
i to the B210 to synch them (doesn&#39;t have to be exact, just within hund=
reds of microseconds). So, I&#39;m only sending a handful of bytes once, so=
 bit-banging is just fine for this application. But, I can&#39;t get either=
 the SPI nor the bit-banging to work. If I can&#39;t see the pin change whe=
n I use the example &#39;get&#39; python code, then nothing will work.</div=
><div><br></div><div>I&#39;d love to talk with someone who has transferred =
data over the B210 GPIO. (Am I supposed to call this the NI 2109 now?) Than=
ks. -page</div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</div></blockquote>
                                        </div></div></blockquote></div>
</div></blockquote>
                                        </div></body>
------=_NextPart_28311920.707663269946--

--===============3070602766835102406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3070602766835102406==--
