Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LM2Jdi03GlVVgkAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2026 11:18:16 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A274B3E9B8F
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2026 11:18:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E7B5C38607C
	for <lists+usrp-users@lfdr.de>; Mon, 13 Apr 2026 05:18:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1776071893; bh=i515OXGT2rk9a1ZsySywhr3gy1hQcIfHo05N9DYzVT0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aXNsWQKXRjxsBETDPPj6vurSzN3qGwRkWx3P0kdhgS28SPnqUsrnB5LcZhyaiVk14
	 QBraD4xpE8J7D5SRn0dX3JEAPG/zBL1oXw4kBrUDFLLRx8j8geBTJCfXj0f5gwLVV+
	 iRHB+1cmi5vj2UyqzXLcx6tz1sekuu4hm7bsp4haSau5Asd0/LcdOWTvTfdLoxzKr4
	 3tQc95XitIdpoqA7Nb/dZXozZIWRN6xTulVhnGXdTxznp1gntLg8weKWQ4xmGmhCJ6
	 v55ZvRCDbk8Hms+6lN5Cw3W2Q9+ZkwQ3El4jqRoSiZEhJXgkXFMmEYTiUhyJ1a7JCY
	 Eq0VfvlnP/CSg==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 488393814D3
	for <usrp-users@lists.ettus.com>; Mon, 13 Apr 2026 05:17:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20251104.gappssmtp.com header.i=@ettus-com.20251104.gappssmtp.com header.b="0iHZl7ox";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-8aca2726f61so14264286d6.0
        for <usrp-users@lists.ettus.com>; Mon, 13 Apr 2026 02:17:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776071862; cv=none;
        d=google.com; s=arc-20240605;
        b=OETKnJBoQApbS+VKw7o2yedYbMf7Py4YUX5mvkfVxMkgIdR7WT5UykTsc6dyABBks2
         yffoK2L/pGcOCh7c5XKjOpkLJ1LRS5ha+73p669ERHduwYlRBoc/ZBTwOHSTuM4ziSg8
         6UFqLLekTR0N8wqTDK2z/Pf22Fg0TSGcj6vjTfxB5SIpe2jDTsbwAGg1+6wOhGfuo/vT
         NbpgKDs2ArhuWeYCE+q0c4n3eiC+DBE/ORbuQhkkNAbwyYZ4FGGCNuaeeK6jae9KHyiP
         oV6mOXtybsuw6ZU2fNERiyqc5GUpUVSMvMPBGnLxHTgA7+Svk7QQKHhpof0bnp6+NXDf
         5TAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+2RrjF9RhHt6z45uDAFDvxjQ7DLQAbfAXuS/StRUxbo=;
        fh=Szg9Fj39juJmXuAup1Rc5yG++rOI+1Y2fBKW0EueK+8=;
        b=P2piwDrHCpPKNTnBrweuEK6x3hX4o3NMOVW2d/SUBhUdTvtNTD/qdbV8RWhNsQmR+v
         Nehcyf+JlRYZglMRKXjRVXj5Jk2W6PIeegUo5D6Jtu6GCKS2nWETaixnB/l+5w6XUKfk
         HtRhtRxHtw+lQErpIGn3H2+mqUrtLraFqIEVMhEhn+d8oxO35FfQYNo6HRu1PJk3QAkI
         9o4GKVhzAJWQi/eDKqDUuje+1H51XjkRxdk+d7KSFT8PpgUvt8bbzEhcF55WuYSnIGsF
         BWAvjh+5xtH/4mMdQ3BDvToiVW+iyrDv44mS7WX+hYwKc2sSWf5DpFbT/HTu3yklB7p1
         BqJQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20251104.gappssmtp.com; s=20251104; t=1776071862; x=1776676662; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+2RrjF9RhHt6z45uDAFDvxjQ7DLQAbfAXuS/StRUxbo=;
        b=0iHZl7oxxhQIi5qRCLz04TWXJ6kmLbv7x82E5JJ+azqLSe6opd1YD+8SaG7ccMlpnY
         6kMz3GwwoOGgKyjVtzRkpmDFa1OiT1yumaGgrpePNH+QXNp2sprMEgxHYaNq+u/8EDTb
         Cd0T76tIvE3jioYlYVFJSiqQVxnbnPr0cMTWFGM2ZqxSRN/kiAoIXsUNfNRopBLuVB3l
         ZQtQyyHfATTAmr9IyvMooJFnDI23FRQySYiR+KwsYfv4DWxCNToP1Mla0A6yqTDwhoMb
         J3Jv7SnU2CrF57vJNJYe2QdePsr4f+nspYYRjMrgYYNID35K9BufKEgnQVP0GoNeh7Fe
         87UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776071862; x=1776676662;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+2RrjF9RhHt6z45uDAFDvxjQ7DLQAbfAXuS/StRUxbo=;
        b=qQcC1SOYwxwRtwmRUBXf8iRDNTeppt6s3GC6p4+TEj9X8La6PxEghGEoScS5e1Detg
         Uw0KhtHQOlxz6VpjWNSvitsmbOKfuI1GFSUpq/0dSXl7IL+0sK0HuNqj3WT5cp3GXEJb
         yxayajo4JU4139UlIe7/wItg+HkZeonxhgLQspwWDLh5jR6ErfbWqkBtbvT9ZxGffh5R
         /LRPH9ZY/pU8KFOwbW6qgcBdMIWkh6U63IxM+6upUBE3KJpwkDs47XKczrvN65fkvd3Y
         1Sl6/QKsC+QOCezD5wOwQG7dr9IhpY/XWaabwGTP0PyaczURwDASPzM+R6xdrS9eVUxg
         kasA==
X-Gm-Message-State: AOJu0YxjjC22hJaEZnSRPQFCBFBSMQt2EYIyR8O0KPGRrZTRzzba4aMZ
	sHjseILKupzg7CZW2zAfC4yD5b1h0gWNeFRwRTr2bK9c+Q5mXpfbfrp/5GMwPD68ONiP8tceBWM
	alDkc8bIH0xtIitp8aGSetQM7XdnUqrjI+QJqBh0ICHvV
X-Gm-Gg: AeBDies+ewml7yPswGcAqjRUYvxWZDaX9qpSOzZ0dsjqDksJiLURhpCxfS41HiAp8EZ
	uN2/WrlGT2BkgAyBjVbU+CrvpPp0aOWs35xR7hXm6SDJKo5rsSwcygti+q7g5VG2EPMUCuQYgA/
	QXUiJB+D6pvnWav2geLLRh9E2yAa4o+drkg3W/6KOoecl7piAHymzw1RRG3lpdnuavPxjHBzw8C
	ms4FmgMgTH0QTw7cF4FjcIYhd54u9dEthKPRVe7mhrQ4E9TKDehpp6wdIdIOsXVaqiWt/XZmFfC
	2vuBt6Vd/uqmKLxUlcHlCQDw3Zr6gZPuxOhIj6Q=
X-Received: by 2002:ad4:5d66:0:b0:89c:4fab:3783 with SMTP id
 6a1803df08f44-8ac860201damr217791036d6.0.1776071861478; Mon, 13 Apr 2026
 02:17:41 -0700 (PDT)
MIME-Version: 1.0
References: <Mailbird-2c382234-25a9-4120-81b8-4c0a3b62f1f6@gmail.com>
 <CAFOi1A4aVMq5-cs6=ZtMSSeEzfZS-tD2tJim_Ew=OeQzkrdcAw@mail.gmail.com> <Mailbird-ea503f2a-55f3-4750-a9a3-215f6b514efe@gmail.com>
In-Reply-To: <Mailbird-ea503f2a-55f3-4750-a9a3-215f6b514efe@gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 13 Apr 2026 11:17:30 +0200
X-Gm-Features: AQROBzDHUdzaXXjf6n2_beOnebfUJkLSKvHewUGRnlixHkM-dwEO5FD8Fm17QMo
Message-ID: <CAFOi1A5Z2WcvQky3kd7nuv8fDgf0M0HLj_hHzurrdzXSg6hFkA@mail.gmail.com>
To: page heller <pageheller@gmail.com>
Message-ID-Hash: RXTAB7A2XTYTY5WSGPGT6JE3VBWOUZ7C
X-Message-ID-Hash: RXTAB7A2XTYTY5WSGPGT6JE3VBWOUZ7C
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 GPIO SPI support using UHD Python API
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RXTAB7A2XTYTY5WSGPGT6JE3VBWOUZ7C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4713725898933073204=="
X-Spamd-Result: default: False [0.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[ettus.com];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	NEURAL_HAM(-0.00)[-0.994];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[ettus-com.20251104.gappssmtp.com:s=20251104];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20251104.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,youtu.be:url,uhd.readthedocs.io:url,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: A274B3E9B8F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============4713725898933073204==
Content-Type: multipart/alternative; boundary="00000000000066349d064f53f49c"

--00000000000066349d064f53f49c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Page,

The sudo issue points to the library path not being picked up correctly for
root, or maybe python not finding the installed packages there. So you
might want to change root's bashrc, not the user's.

For the permission denied error when running as user, you'll likely need to
add your user to the 'gpio' group or ensure the necessary permissions are
set on /dev/gpiochip0. What group is that device owned by? Personally, I
prefer this option (giving users access to the Pi's GPIOs).

It's worth pointing out (to future readers of this thread) that the
GPIO-programming on your Pi is unrelated to the GPIO programming of the
USRP itself.

--M

On Fri, Apr 10, 2026 at 4:49=E2=80=AFPM page heller <pageheller@gmail.com> =
wrote:

> Martin, thanks for your hints. I had indeed watched the video on the gpio
> pins. The only difference I see is that I am trying to use the Python API
> to read the pins. I have a question on permissions as I get underway here=
.
>
> If I run my python3 program as the user, I get a permission-denied error
> when retrieving the chip0 name. If I run it as super user, it can't fund
> uhd to import. I read through a number of recommendations, and decided
> defining PATHs in ./basrc was the way to solve this. But, with the paths =
I
> show below, the same errors occur. I am not using a virtual environment
> since this is a dedicated machine for a single purpose/single user. -page
> Linux 6.17.0-14-generic
> Ubuntu 24.04.4 LTS
> Python 3.12.3
> uhd 4.9.0
>
>
> user@9i:~$ python3 b210_get_time6_bitbang.py
> gpiochip0 0 2 6 1e-05
> 192
> Traceback (most recent call last):
> File "/home/endpoint/b210_get_time6_bitbang.py", line 77, in <module>
> read_spi(args.chip, args.clk, args.cs, args.mosi, args.bits,
> args.half_period)
> File "/home/endpoint/b210_get_time6_bitbang.py", line 10, in read_spi
> chip =3D gpiod.Chip(chip_name)
> ^^^^^^^^^^^^^^^^^^^^^
> PermissionError: [Errno 13] Permission denied
>
>
> user@9i:~$ sudo python3 b210_get_time6_bitbang.py
> Traceback (most recent call last):
> File "/home/endpoint/b210_get_time6_bitbang.py", line 5, in <module>
> import uhd
> ModuleNotFoundError: No module named 'uhd'
>
>
>
> user@9i:~$ ls /usr/local/include
> uhd uhd.h
> user@9i:~$ ls /usr/local/include/uhd
> build_info.hpp device.hpp features stream.hpp utils
> cal error.h property_tree.hpp transport version.h
> config.h exception.hpp property_tree.ipp types version.hpp
> config.hpp experts rfnoc usrp
> convert.hpp extension rfnoc_graph.hpp usrp_clock
> user@9i:~$ ls /usr/local/lib
> cmake libuhd.so libuhd.so.4.9.0 pkgconfig python3.12 uhd
>
>
>
> user@9i:~$ sudo nano .bashrc
> =E2=80=A6
> # set up uhd
> export LD_LIBRARY_PATH=3D/usr/local/lib/
> export LD_LIBRARY_PATH=3D/usr/local/include/:$LD_LIBRARY_PATH
> export PYTHONPATH=3D/usr/local/lib/python3.12/site-packages/:$PYTHONPATH
>
> On 2/19/2026 2:48:28 AM, Martin Braun <martin.braun@ettus.com> wrote:
> Hi Page,
>
> I'm not sure where you got the 3.3V info from, but this section in the
> manual shows the pins:
>
> https://uhd.readthedocs.io/en/latest/page_usrp_b200.html#b200_switches
>
> From here, this is the pinout:  1=3DGPIO_0, 2=3DGPIO_1, 3=3DGPIO_2, 4=3DG=
PIO_3,
> 5=3DGPIO_4, 6=3DGPIO_5, 7=3DGPIO_6, 8=3DGPIO_7, 9=3DGND, 10=3DGND
>
> Make sure you share a ground pin with your Pi Zero.
>
> If you're just reading pins, follow the manual for set_gpio_attr() (
> https://uhd.readthedocs.io/en/latest/classuhd_1_1usrp_1_1multi__usrp.html=
#a57f25d118d20311aca261e6dd252625e)
> to do the following:
>
>    - Set desired pins CTRL to 0 (GPIO mode)
>    - Set DDR to 0 (input)
>    - Call get_gpio_attr() on the READBACK attribute. You will get all 8
>    pins back, not just the ones you set to input (the others will be what=
ever
>    their state is).
>
> You're right that the manual page for the GPIO API does not spell out B21=
0
> specifically, but everything there also applies to B210:
> https://uhd.readthedocs.io/en/latest/page_gpio_api.html
>
> Start slowly, without SPI, and read back known pin values. Then, poll the
> GPIO bank more quickly to get your bit-banging functionality.
>
> While this does not specifically talk about reading GPIOs, it maybe also
> be useful: https://youtu.be/ppD06ZETnek?si=3DEYGKvF5jfKG9RiGv
>
> --M
>
>
>
> On Thu, Feb 12, 2026 at 7:43=E2=80=AFPM page heller <pageheller@gmail.com=
> wrote:
>
>> I am struggling with the GPIO on the Ettus B210 (J504). I am connecting
>> it to a Raspberry Pi Zero acting as the Master for SPI communications,
>> sending the chip select and clock to the B210. The loopback test on the =
Pi
>> is successful. The NI-provided Python example code on the B210 side appe=
ars
>> to 'get' (read) the pins on J504. Disconnected I see the chip select sig=
nal
>> go low and back high, but when I connect it to J504, the software to 'ge=
t'
>> the pin doesn't change (same code, but in a for-loop). I'm using pin 1 a=
s
>> the chip select, 3 for clock, 6 for MOSI. I'm not using MISO.
>>
>> Some references on line suggest that pin 1 is an output on J504 of 3.3V
>> power, but, I don't think so. It most certainly is not 3.3V and appears =
to
>> be just like the other pins.
>>
>> I need some help. I've invested about ten hours trying a number of
>> different methods and code examples. I've tried getting SPI to work, but
>> the documentation is so poor, I can only guess on the actual
>> implementation. When that didn't work, I went to bit-banging; also with =
no
>> success. I'm just sending datetime from the pi to the B210 to synch them
>> (doesn't have to be exact, just within hundreds of microseconds). So, I'=
m
>> only sending a handful of bytes once, so bit-banging is just fine for th=
is
>> application. But, I can't get either the SPI nor the bit-banging to work=
.
>> If I can't see the pin change when I use the example 'get' python code,
>> then nothing will work.
>>
>> I'd love to talk with someone who has transferred data over the B210
>> GPIO. (Am I supposed to call this the NI 2109 now?) Thanks. -page
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________ USRP-users mailing list -=
-
> usrp-users@lists.ettus.com To unsubscribe send an email to
> usrp-users-leave@lists.ettus.com
>
>

--00000000000066349d064f53f49c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Page,<br><br>The sudo issue points to the library path=
 not being picked up correctly for root, or maybe python not finding the in=
stalled packages there. So you might want to change root&#39;s bashrc, not =
the user&#39;s.<br><br><div>For the permission denied error when running as=
 user, you&#39;ll likely need to add your user to the &#39;gpio&#39; group =
or ensure the necessary permissions are set on /dev/gpiochip0. What group i=
s that device owned by? Personally, I prefer this option (giving users acce=
ss to the Pi&#39;s GPIOs).</div><div><br></div><div>It&#39;s worth pointing=
 out (to future readers of this thread) that the GPIO-programming on your P=
i is unrelated to the GPIO programming of the USRP itself.</div><br>--M</di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Apr 10, 2026 at 4:49=E2=80=AFPM page heller &lt;<=
a href=3D"mailto:pageheller@gmail.com">pageheller@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div id=3D"=
m_-9133328981838138558__MailbirdStyleContent" style=3D"font-size:10pt;font-=
family:Arial;color:rgb(26,26,26);text-align:left" dir=3D"ltr">
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
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt">L=
inux 6.17.0-14-generic</span><br style=3D"color:rgb(34,34,34);font-family:A=
rial,Helvetica,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34=
);font-family:Arial,Helvetica,sans-serif;font-size:10pt">Ubuntu 24.04.4 LTS=
</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-se=
rif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,He=
lvetica,sans-serif;font-size:10pt">Python 3.12.3</span><br style=3D"color:r=
gb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span s=
tyle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-siz=
e:10pt">uhd 4.9.0</span></div><div><br style=3D"color:rgb(34,34,34);font-fa=
mily:Arial,Helvetica,sans-serif;font-size:10pt"><br style=3D"color:rgb(34,3=
4,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span style=3D=
"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"=
>user@9i:~$ python3 b210_get_time6_bitbang.py</span><br style=3D"color:rgb(=
34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span styl=
e=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:1=
0pt">gpiochip0 0 2 6 1e-05</span><br style=3D"color:rgb(34,34,34);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,3=
4,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt">192</span><br =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,san=
s-serif;font-size:10pt">Traceback (most recent call last):</span><br style=
=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10=
pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-ser=
if;font-size:10pt">File &quot;/home/endpoint/b210_get_</span><span style=3D=
"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"=
>time6_bitbang.py&quot;, line 77, in &lt;module&gt;</span><br style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><spa=
n style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-=
size:10pt">read_spi(args.chip, args.clk, args.cs, args.mosi, args.bits, arg=
s.half_period)</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Hel=
vetica,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-f=
amily:Arial,Helvetica,sans-serif;font-size:10pt">File &quot;/home/endpoint/=
b210_get_</span><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:10pt">time6_bitbang.py&quot;, line 10, in read_spi=
</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-se=
rif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,He=
lvetica,sans-serif;font-size:10pt">chip =3D gpiod.Chip(chip_name)</span><br=
 style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-s=
ize:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sa=
ns-serif;font-size:10pt">^^^^^^^^^^^^^^^^^^^^^</span><br style=3D"color:rgb=
(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span sty=
le=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:=
10pt">PermissionError: [Errno 13] Permission denied</span><br style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><br =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:10pt"><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-=
serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,=
Helvetica,sans-serif;font-size:10pt">user@9i:~$ sudo python3 b210_get_time6=
_bitbang.py</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:10pt">Traceback (most recent call l=
ast):</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sa=
ns-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Ari=
al,Helvetica,sans-serif;font-size:10pt">File &quot;/home/endpoint/b210_get_=
</span><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-=
serif;font-size:10pt">time6_bitbang.py&quot;, line 5, in &lt;module&gt;</sp=
an><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:10pt">import uhd</span><br style=3D"color:rgb(34,3=
4,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span style=3D=
"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"=
>ModuleNotFoundError: No module named &#39;uhd&#39;</span><br style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><br =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:10pt"><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-=
serif;font-size:10pt"><br style=3D"color:rgb(34,34,34);font-family:Arial,He=
lvetica,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-=
family:Arial,Helvetica,sans-serif;font-size:10pt">user@9i:~$ ls /usr/local/=
include</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,=
sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:A=
rial,Helvetica,sans-serif;font-size:10pt">uhd uhd.h</span><br style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><spa=
n style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-=
size:10pt">user@9i:~$ ls /usr/local/include/uhd</span><br style=3D"color:rg=
b(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span st=
yle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size=
:10pt">build_info.hpp device.hpp features stream.hpp utils</span><br style=
=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10=
pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-ser=
if;font-size:10pt">cal error.h property_tree.hpp transport version.h</span>=
<br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;fon=
t-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica=
,sans-serif;font-size:10pt">config.h exception.hpp property_tree.ipp types =
version.hpp</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:10pt">config.hpp experts rfnoc usrp=
</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-se=
rif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,He=
lvetica,sans-serif;font-size:10pt">convert.hpp extension rfnoc_graph.hpp us=
rp_clock</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica=
,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:=
Arial,Helvetica,sans-serif;font-size:10pt">user@9i:~$ ls /usr/local/lib</sp=
an><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:10pt">cmake libuhd.so libuhd.so.4.9.0 pkgconfig py=
thon3.12 uhd</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helve=
tica,sans-serif;font-size:10pt"><br style=3D"color:rgb(34,34,34);font-famil=
y:Arial,Helvetica,sans-serif;font-size:10pt"><br style=3D"color:rgb(34,34,3=
4);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><br style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><spa=
n style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-=
size:10pt">user@9i:~$ sudo nano .bashrc</span><br style=3D"color:rgb(34,34,=
34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt">=
=E2=80=A6</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetic=
a,sans-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family=
:Arial,Helvetica,sans-serif;font-size:10pt"># set up uhd</span><br style=3D=
"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"=
><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:10pt">export LD_LIBRARY_PATH=3D/usr/local/</span><span style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt">l=
ib/</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans=
-serif;font-size:10pt"><span style=3D"color:rgb(34,34,34);font-family:Arial=
,Helvetica,sans-serif;font-size:10pt">export LD_LIBRARY_PATH=3D/usr/local/<=
/span><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-s=
erif;font-size:10pt">include/:$LD_LIBRARY_PATH</span><br style=3D"color:rgb=
(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt"><span sty=
le=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:=
10pt">export PYTHONPATH=3D/usr/local/lib/</span><span style=3D"color:rgb(34=
,34,34);font-family:Arial,Helvetica,sans-serif;font-size:10pt">python3.12/s=
ite-packages/:$</span><span style=3D"color:rgb(34,34,34);font-family:Arial,=
Helvetica,sans-serif;font-size:10pt">PYTHONPATH</span></div><div><span styl=
e=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:1=
0pt"><br></span></div><blockquote type=3D"cite" style=3D"border-left-style:=
solid;border-width:1px;margin-top:20px;margin-left:0px;padding-left:10px">
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
nt" style=3D"font-size:10pt;font-family:Arial;color:rgb(26,26,26);text-alig=
n:left" dir=3D"ltr">I am struggling with the GPIO on the Ettus B210 (J504).=
 I am connecting it to a Raspberry Pi Zero acting as the Master for SPI com=
munications, sending the chip select and clock to the B210. The loopback te=
st on the Pi is successful. The NI-provided Python example code on the B210=
 side appears to &#39;get&#39; (read) the pins on J504. Disconnected I see =
the chip select signal go low and back high, but when I connect it to J504,=
 the software to &#39;get&#39; the pin doesn&#39;t change (same code, but i=
n a for-loop). I&#39;m using pin 1 as the chip select, 3 for clock, 6 for M=
OSI. I&#39;m not using MISO.=C2=A0<div><br></div><div>Some references on li=
ne suggest that pin 1 is an output on J504 of 3.3V power, but, I don&#39;t =
think so. It most certainly is not 3.3V and appears to be just like the oth=
er pins.</div><div><br></div><div>I need some help. I&#39;ve invested about=
 ten hours trying a number of different methods and code examples. I&#39;ve=
 tried getting SPI to work, but the documentation is so poor, I can only gu=
ess on the actual implementation. When that didn&#39;t work, I went to bit-=
banging; also with no success. I&#39;m just sending datetime from the pi to=
 the B210 to synch them (doesn&#39;t have to be exact, just within hundreds=
 of microseconds). So, I&#39;m only sending a handful of bytes once, so bit=
-banging is just fine for this application. But, I can&#39;t get either the=
 SPI nor the bit-banging to work. If I can&#39;t see the pin change when I =
use the example &#39;get&#39; python code, then nothing will work.</div><di=
v><br></div><div>I&#39;d love to talk with someone who has transferred data=
 over the B210 GPIO. (Am I supposed to call this the NI 2109 now?) Thanks. =
-page</div></div>_______________________________________________<br>
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

--00000000000066349d064f53f49c--

--===============4713725898933073204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4713725898933073204==--
