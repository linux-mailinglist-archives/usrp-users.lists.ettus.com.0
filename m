Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKW7LA8O2Wl+lggAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 16:49:51 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2FD3D8CCD
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 16:49:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42AA538717E
	for <lists+usrp-users@lfdr.de>; Fri, 10 Apr 2026 10:49:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1775832589; bh=v32oUr5Hs4lKPF6hGtPhrhjnas4FqLmpSJVlTLnPmCQ=;
	h=Date:From:To:In-Reply-To:References:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vOjYJSJhyxlkHH0EVey7fw8pW5szmYFwXXrSCC6WiIiXl6EmU1Tgs/Z23eyhha165
	 b9U3WxznN85ns55blXidFtgmuY6D49SWB7No9kibeSEk6gngacC51JdivRXTDEO7/7
	 ri8KeYY0u3d2DKRsrE+S74uc+G4VyFWgm2mM2nziN4u29VuynJ0vs8cihJJnhaG85n
	 jsAsdkILpzvnjse+ZBlMY8agxZa6HNiwjPPCPjVilMsBjvFJGMRPXXSpqKLB3GJcmI
	 4ZRGon2zQHWbFZLZy1sotYFHLh0RiyG6qHkQHtTmUVDQNqakE5RMPY1Hr1+h9Dw75B
	 /WM+kiUmkv3zw==
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 77A4C387102
	for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 10:49:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="n6kUpYZ4";
	dkim-atps=neutral
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-8a3342d301aso21728936d6.2
        for <usrp-users@lists.ettus.com>; Fri, 10 Apr 2026 07:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775832542; x=1776437342; darn=lists.ettus.com;
        h=user-agent:references:in-reply-to:cc:to:from:subject:message-id
         :date:mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MB6/v6DYWFcf+fPbbM/0gD1yXAa7n33bRGHl03dde0c=;
        b=n6kUpYZ4ccwCKh1hx7R8RmlWMWoFv2fMyGRSPj2jj7eAzK+5qeA/Kdt+akCBLzaXIo
         1xnejfdjst8rZYae2xp2md7eLcKY9TOu/eI+V0OXYfhuZRn+oFrN+kQll5Drrxgp+6XP
         IZPC0Tjjyz7q0sxwZN/FYneyDNXQXF3xlQ4pKJ1JeV5DyhciHt+QxVeZtWjDdxSMsK4N
         +gwJsB4L2HX04OdgqlQMfRlwtZTI4Uy1+qnJsG4TVnjZJ2d/WvMcGGahPN5n7mChJyoO
         Y6W7BAC1GVwXXkJsW5SH5WkESTCq4B3ut289Kkh1OJRlZy1ZMt9s0CNVzAqxPf6UmwHp
         U2XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775832542; x=1776437342;
        h=user-agent:references:in-reply-to:cc:to:from:subject:message-id
         :date:mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MB6/v6DYWFcf+fPbbM/0gD1yXAa7n33bRGHl03dde0c=;
        b=Z/Emnwl6HOYtWVbDyHF6xVxkvFzSxvvTn0rVjhL8xvjMUQV/iqDhluga221HoGVzqd
         g+0RdywtRgIv46OVfGhCxj4q7p7P4dlyOKo3RYimVYbsTMjrq1pxqbUTvtVv0cbPlZ3y
         n4iaYyI81zM2F34iITvNytSunPowt9Z0RrOZMY9IgW2W0TDUWqYj4gfSZcKUn2rXrxic
         qVCSoZiSAtD9fo2nU5nbXyXnuVwg8vO+HGAADhsz4spjp+C7KX7w5zpWpaeZmHhEiglv
         RMP1wIdlaedz3YHsVOnlpKhvaX9P5aQBA7NFpgEMN2+NTOuUyv+jCHPR6uGZqtu0m6JM
         es7A==
X-Gm-Message-State: AOJu0YxE6JyRxvWThsX/mUJ0cgegV+9+uxwEj5OJElw1V0/mPJ47OjFF
	AcHjDnDCsuXBbrg5OchQibfVAcTmPkh2K7DPzIMZiey3xFs3/G9lUhEmJKdyTg==
X-Gm-Gg: AeBDieuGaiuXdtA7CrL2wXOJFc3/J2VOoL31GI479W2SRpOx0dcDz0/zw0OSw0qqBIh
	3CDn7q67AsHOwVc0g14C2BbP9BU9h0HxFd7uKut55+2/An+SXKlr2Rc+iOfn6CGosCTFXsrP3WX
	NWEJFgW9q8JmU6nqoGgSHq5riTHemw8JU0lnK5bgkonlVCAqwLazLwLXfhlzsWqLogaafd8IWZS
	QL9+pndLy86d/hte3lwM0wCOWFouJngcaL9+hJjxGeucwk+sPj5kiTWjdflxV585JsmRmeagn5N
	wFT2Q76HjjC5/hWt9KOwy2/j2R/ruwuvEMBaLYuH7sCcvNuH22hac1OOxgm2OHfVswhyqs9jkxe
	uY79MbzIPb5V8RXLz97QRUwKqzT1Of4oqPnSNaLeIOYdent8mwS89Z5zm/6n4e4Mdo0k9QDXupM
	LcjB2tKt8HPZ8cviKjgI4XMPoRbA6az3TGByG8LA==
X-Received: by 2002:ad4:4eab:0:b0:89c:52b6:ba76 with SMTP id 6a1803df08f44-8ac861567eemr53229666d6.7.1775832541404;
        Fri, 10 Apr 2026 07:49:01 -0700 (PDT)
Received: from [192.168.5.59] ([47.186.162.138])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ac84a45552sm24444236d6.20.2026.04.10.07.49.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2026 07:49:00 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 10 Apr 2026 09:48:40 -0500
Message-ID: <Mailbird-ea503f2a-55f3-4750-a9a3-215f6b514efe@gmail.com>
From: "page heller" <pageheller@gmail.com>
To: "Martin Braun" <martin.braun@ettus.com>
In-Reply-To: <CAFOi1A4aVMq5-cs6=ZtMSSeEzfZS-tD2tJim_Ew=OeQzkrdcAw@mail.gmail.com>
References: <Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com>
 <CAFOi1A4aVMq5-cs6=ZtMSSeEzfZS-tD2tJim_Ew=OeQzkrdcAw@mail.gmail.com>
User-Agent: Mailbird/3.0.53.0
X-Mailbird-ID: Mailbird-ea503f2a-55f3-4750-a9a3-215f6b514efe@gmail.com
Message-ID-Hash: UHJG6JCE6AT2B4BQU3YCFT3FD4YAPNJF
X-Message-ID-Hash: UHJG6JCE6AT2B4BQU3YCFT3FD4YAPNJF
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 GPIO SPI support using UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UHJG6JCE6AT2B4BQU3YCFT3FD4YAPNJF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8663805766915093728=="
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[pageheller@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim,youtu.be:url,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: AC2FD3D8CCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============8663805766915093728==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_46017686.982231066086"

------=_NextPart_46017686.982231066086
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

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

On 2/19/2026 2:48:28 AM, Martin Braun <martin.braun@ettus.com> wrote:
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
usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave=
@lists.ettus.com
------=_NextPart_46017686.982231066086
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #1A1A1A;text-align: left" dir=3D"ltr">
                                        Martin, thanks for your hints. I ha=
d indeed watched the video on the gpio pins. The only difference I see is t=
hat I am trying to use the Python API to read the pins. I have a question o=
n permissions as I get underway here.<div><br></div><div>If I run my python=
3 program as the user, I get a permission-denied error when retrieving the =
chip0 name. If I run it as super user, it can't fund uhd to import. I read =
through a number of recommendations, and decided defining PATHs in ./basrc =
was the way to solve this. But, with the paths I show below, the same error=
s occur. I am not using a virtual environment since this is a dedicated mac=
hine for a single purpose/single user. -page</div><div><span style=3D"color=
: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt=
">Linux 6.17.0-14-generic</span><br style=3D"color: rgb(34, 34, 34);font-fa=
mily: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: r=
gb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">U=
buntu 24.04.4 LTS</span><br style=3D"color: rgb(34, 34, 34);font-family: Ar=
ial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 3=
4, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">Python 3.=
12.3</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetic=
a, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-f=
amily: Arial, Helvetica, sans-serif;font-size: 10pt">uhd 4.9.0</span></div>=
<div><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, san=
s-serif;font-size: 10pt"><br style=3D"color: rgb(34, 34, 34);font-family: A=
rial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, =
34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">user@9i:=
~$ python3 b210_get_time6_bitbang.py</span><br style=3D"color: rgb(34, 34, =
34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=
=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-s=
ize: 10pt">gpiochip0 0 2 6 1e-05</span><br style=3D"color: rgb(34, 34, 34);=
font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"c=
olor: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: =
10pt">192</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Hel=
vetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);f=
ont-family: Arial, Helvetica, sans-serif;font-size: 10pt">Traceback (most r=
ecent call last):</span><br style=3D"color: rgb(34, 34, 34);font-family: Ar=
ial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 3=
4, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">File "/ho=
me/endpoint/b210_get_</span><wbr style=3D"color: rgb(34, 34, 34);font-famil=
y: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(=
34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">time=
6_bitbang.py", line 77, in &lt;module&gt;</span><br style=3D"color: rgb(34,=
 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span s=
tyle=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;fo=
nt-size: 10pt">read_spi(args.chip, args.clk, args.cs, args.mosi, args.bits,=
 args.half_period)</span><br style=3D"color: rgb(34, 34, 34);font-family: A=
rial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, =
34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">File "/h=
ome/endpoint/b210_get_</span><wbr style=3D"color: rgb(34, 34, 34);font-fami=
ly: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb=
(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">tim=
e6_bitbang.py", line 10, in read_spi</span><br style=3D"color: rgb(34, 34, =
34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=
=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-s=
ize: 10pt">chip =3D gpiod.Chip(chip_name)</span><br style=3D"color: rgb(34,=
 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span s=
tyle=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;fo=
nt-size: 10pt">^^^^^^^^^^^^^^^^^^^^^</span><br style=3D"color: rgb(34, 34, =
34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=
=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-s=
ize: 10pt">PermissionError: [Errno 13] Permission denied</span><br style=3D=
"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size=
: 10pt"><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, =
sans-serif;font-size: 10pt"><br style=3D"color: rgb(34, 34, 34);font-family=
: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(3=
4, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">user@=
9i:~$ sudo python3 b210_get_time6_bitbang.py</span><br style=3D"color: rgb(=
34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><spa=
n style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif=
;font-size: 10pt">Traceback (most recent call last):</span><br style=3D"col=
or: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10=
pt"><span style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sa=
ns-serif;font-size: 10pt">File "/home/endpoint/b210_get_</span><wbr style=
=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-s=
ize: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvet=
ica, sans-serif;font-size: 10pt">time6_bitbang.py", line 5, in &lt;module&g=
t;</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica,=
 sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-fam=
ily: Arial, Helvetica, sans-serif;font-size: 10pt">import uhd</span><br sty=
le=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font=
-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Arial, Helv=
etica, sans-serif;font-size: 10pt">ModuleNotFoundError: No module named 'uh=
d'</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica,=
 sans-serif;font-size: 10pt"><br style=3D"color: rgb(34, 34, 34);font-famil=
y: Arial, Helvetica, sans-serif;font-size: 10pt"><br style=3D"color: rgb(34=
, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><br st=
yle=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;fon=
t-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Arial, Hel=
vetica, sans-serif;font-size: 10pt">user@9i:~$ ls /usr/local/include</span>=
<br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-ser=
if;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Aria=
l, Helvetica, sans-serif;font-size: 10pt">uhd uhd.h</span><br style=3D"colo=
r: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10p=
t"><span style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, san=
s-serif;font-size: 10pt">user@9i:~$ ls /usr/local/include/uhd</span><br sty=
le=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font=
-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Arial, Helv=
etica, sans-serif;font-size: 10pt">build_info.hpp device.hpp features strea=
m.hpp utils</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, H=
elvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34)=
;font-family: Arial, Helvetica, sans-serif;font-size: 10pt">cal error.h pro=
perty_tree.hpp transport version.h</span><br style=3D"color: rgb(34, 34, 34=
);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D=
"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size=
: 10pt">config.h exception.hpp property_tree.ipp types version.hpp</span><b=
r style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif=
;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Arial,=
 Helvetica, sans-serif;font-size: 10pt">config.hpp experts rfnoc usrp</span=
><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-se=
rif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Ari=
al, Helvetica, sans-serif;font-size: 10pt">convert.hpp extension rfnoc_grap=
h.hpp usrp_clock</span><br style=3D"color: rgb(34, 34, 34);font-family: Ari=
al, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34=
, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">user@9i:~$=
 ls /usr/local/lib</span><br style=3D"color: rgb(34, 34, 34);font-family: A=
rial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, =
34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">cmake li=
buhd.so libuhd.so.4.9.0 pkgconfig python3.12 uhd</span><br style=3D"color: =
rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">=
<br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-ser=
if;font-size: 10pt"><br style=3D"color: rgb(34, 34, 34);font-family: Arial,=
 Helvetica, sans-serif;font-size: 10pt"><br style=3D"color: rgb(34, 34, 34)=
;font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"=
color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size:=
 10pt">user@9i:~$ sudo nano .bashrc</span><br style=3D"color: rgb(34, 34, 3=
4);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"><span style=
=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-serif;font-s=
ize: 10pt">=E2=80=A6</span><br style=3D"color: rgb(34, 34, 34);font-family:=
 Arial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34=
, 34, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt"># set =
up uhd</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvet=
ica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font=
-family: Arial, Helvetica, sans-serif;font-size: 10pt">export LD_LIBRARY_PA=
TH=3D/usr/local/</span><wbr style=3D"color: rgb(34, 34, 34);font-family: Ar=
ial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 3=
4, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">lib/</spa=
n><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvetica, sans-s=
erif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-family: Ar=
ial, Helvetica, sans-serif;font-size: 10pt">export LD_LIBRARY_PATH=3D/usr/l=
ocal/</span><wbr style=3D"color: rgb(34, 34, 34);font-family: Arial, Helvet=
ica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font=
-family: Arial, Helvetica, sans-serif;font-size: 10pt">include/:$LD_LIBRARY=
_PATH</span><br style=3D"color: rgb(34, 34, 34);font-family: Arial, Helveti=
ca, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34, 34);font-=
family: Arial, Helvetica, sans-serif;font-size: 10pt">export PYTHONPATH=3D/=
usr/local/lib/</span><wbr style=3D"color: rgb(34, 34, 34);font-family: Aria=
l, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 34,=
 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">python3.12/=
site-packages/:$</span><wbr style=3D"color: rgb(34, 34, 34);font-family: Ar=
ial, Helvetica, sans-serif;font-size: 10pt"><span style=3D"color: rgb(34, 3=
4, 34);font-family: Arial, Helvetica, sans-serif;font-size: 10pt">PYTHONPAT=
H</span></div><div><span style=3D"color: rgb(34, 34, 34);font-family: Arial=
, Helvetica, sans-serif;font-size: 10pt"><br></span></div><blockquote class=
=3D'history_container' type=3D'cite' style=3D'border-left-style:solid;borde=
r-width:1px; margin-top:20px; margin-left:0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 2=
/19/2026 2:48:28 AM, Martin Braun &lt;martin.braun@ettus.com&gt; wrote:</p>=
<div style=3D'font-family:Arial,Helvetica,sans-serif'><div dir=3D"ltr"><div=
>Hi Page,</div><div><br></div><div>I&#39;m not sure where you got the 3.3V =
info from, but this section in the manual shows the pins:</div><div><br></d=
iv><div><a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_b200.html=
#b200_switches">https://uhd.readthedocs.io/en/latest/page_usrp_b200.html#b2=
00_switches</a></div><div><br></div><div>From here, this is the pinout:=C2=
=A0
1=3DGPIO_0, 2=3DGPIO_1, 3=3DGPIO_2, 4=3DGPIO_3, 5=3DGPIO_4, 6=3DGPIO_5, 7=
=3DGPIO_6, 8=3DGPIO_7, 9=3DGND, 10=3DGND</div><div><br></div><div>Make sure=
 you share a ground pin with your Pi Zero.</div><div><br></div><div>If you&=
#39;re just reading pins, follow the manual for set_gpio_attr() (<a href=3D=
"https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html#=
a57f25d118d20311aca261e6dd252625e">https://uhd.readthedocs.io/en/latest/cla=
ssuhd_1_1usrp_1_1multi__usrp.html#a57f25d118d20311aca261e6dd252625e</a>) to=
 do the following:</div><div><ul><li>Set desired pins CTRL to 0 (GPIO mode)=
</li><li>Set DDR to 0 (input)</li><li>Call get_gpio_attr() on the READBACK =
attribute. You will get all 8 pins back, not just the ones you set to input=
 (the others will be whatever their state is).</li></ul></div><div>You&#39;=
re right that the manual page for the GPIO API does not spell out B210 spec=
ifically, but everything there also applies to B210: <a href=3D"https://uhd=
.readthedocs.io/en/latest/page_gpio_api.html">https://uhd.readthedocs.io/en=
/latest/page_gpio_api.html</a></div><div><br></div><div>Start slowly, witho=
ut SPI, and read back known pin values. Then, poll the GPIO bank more quick=
ly to get your bit-banging functionality.</div><div><br></div><div>While th=
is does not specifically talk about reading GPIOs, it maybe also be useful:=
=C2=A0<a href=3D"https://youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv">https:=
//youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv</a></div><div><br></div><div>-=
-M</div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 12,=
 2026 at 7:43=E2=80=AFPM page heller &lt;<a href=3D"mailto:pageheller@gmail=
.com">pageheller@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div id=3D"m_5982087996159542787__MailbirdStyleCo=
ntent" style=3D"font-size: 10pt;font-family: Arial;color: rgb(26,26,26);tex=
t-align: left" dir=3D"ltr">I am struggling with the GPIO on the Ettus B210 =
(J504). I am connecting it to a Raspberry Pi Zero acting as the Master for =
SPI communications, sending the chip select and clock to the B210. The loop=
back test on the Pi is successful. The NI-provided Python example code on t=
he B210 side appears to &#39;get&#39; (read) the pins on J504. Disconnected=
 I see the chip select signal go low and back high, but when I connect it t=
o J504, the software to &#39;get&#39; the pin doesn&#39;t change (same code=
, but in a for-loop). I&#39;m using pin 1 as the chip select, 3 for clock, =
6 for MOSI. I&#39;m not using MISO.=C2=A0<div><br></div><div>Some reference=
s on line suggest that pin 1 is an output on J504 of 3.3V power, but, I don=
&#39;t think so. It most certainly is not 3.3V and appears to be just like =
the other pins.</div><div><br></div><div>I need some help. I&#39;ve investe=
d about ten hours trying a number of different methods and code examples. I=
&#39;ve tried getting SPI to work, but the documentation is so poor, I can =
only guess on the actual implementation. When that didn&#39;t work, I went =
to bit-banging; also with no success. I&#39;m just sending datetime from th=
e pi to the B210 to synch them (doesn&#39;t have to be exact, just within h=
undreds of microseconds). So, I&#39;m only sending a handful of bytes once,=
 so bit-banging is just fine for this application. But, I can&#39;t get eit=
her the SPI nor the bit-banging to work. If I can&#39;t see the pin change =
when I use the example &#39;get&#39; python code, then nothing will work.</=
div><div><br></div><div>I&#39;d love to talk with someone who has transferr=
ed data over the B210 GPIO. (Am I supposed to call this the NI 2109 now?) T=
hanks. -page</div></div>_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
</div></blockquote>
                                        </div></body>
------=_NextPart_46017686.982231066086--

--===============8663805766915093728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8663805766915093728==--
