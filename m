Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 429CFA7F776
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 10:14:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88D03385B15
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 04:14:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744100066; bh=Lzyb7ALP3/ue4+pVP5sYNsV+J+wCDbEYBYFAklE6OBI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=S/g8SvMH8uUSWx3QmSWu6yuzG2TiN9MKNx/YkAu3J2ydNA7JrDe7+cS64zUYpl/Eo
	 kNZ+NxeLRdSrg6xAiv35EDhubj+e/wbWDyVceDzdNTNyvRy/WgWIqJBnMNtMkB9Hp6
	 1lS/g39tehtxAvcfYBX0hfsBq+BdgI0G5bhL26klN/wU+urQ95uNaCt3DSVNW2JmhA
	 RGF5XiUkkmO4tTdiDTfXr5v17u5yK62fOnacJCRAnxAtBjfqG8uxilYIoj1X7Q/ZAk
	 2hlRaFCEjUywaF5TPmNq5dRlm7eN8nnvLWi1sSh26jWeiPU19fzLAitT+7kAm+VJq0
	 ObB1bd35dnxsQ==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id A3D763859E9
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 04:14:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="kVTqj9VJ";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac297cbe017so1168746666b.0
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 01:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744100055; x=1744704855; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Cp2V+uyMXoKI2u9lSHgoUSDkrOFwSx6sZIE/B4oL5M=;
        b=kVTqj9VJvuQejoumsbkIsQlEMgz3nsISlEji/cSGnKcVhJsUsFODxMEQqR5Gv/2/jJ
         WBgEID0dqSsjFay4SCHXAC3pwOkgijDY9KC2gI7dIVYwCPo9NpARAHitcOpXlsuxsVmA
         GktlDCs7BaU7zvwmRaS5bnK2dgGS/Dxp9Hf+k8W9Lk42mIXnXJPTbrYz11xO7evc7/7R
         PNBFuYO0gqSAkJwAO1qGse0IumMqzwaUtINb3RxubJ8FrbBGsUR7nxaS93STUXiRMDwu
         DLxFKpwhPXv1OaFr5XyyjbBrsRMLYmCQ6JlRZhThy/JrKgqXaH/xpnAUfOkb7nWik7Ft
         BB5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744100055; x=1744704855;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Cp2V+uyMXoKI2u9lSHgoUSDkrOFwSx6sZIE/B4oL5M=;
        b=lHQcj0ui6Ta0oepN8OLEPSbv7hHyru9i7TlZ5IiUyqm/V0RGC8kx9gM1MgarpdgoYD
         E+L1jm+VhfZASh0PhXijPoHwMZ7agt3H/EMoVzne2B3cbAMAqJWYE75+QLvEIoew+1/C
         hPKql/IVmg0BqqxFbKxywNsBlOWs3Qu4uwQefe19ov3vjYqoXPEiYgs9WJJJkrJyj9Qq
         mmvKTKdz6n047tqK1eiJg6CoffEWCjJqyoMGj6LYfA3eR4aij7VOvetxfmGPyYJHj8o9
         rWp7lDspTRD+NhO4c8RtStTAjq4qcKaBF5m5BcaG3GSFOwBHSGWz10gY8w6pU4Sd7Uc4
         eljA==
X-Gm-Message-State: AOJu0YyVjh3wO+uJAHln9wFYeNmRA2Fwpe4xX0BlKNLcR7h1ZhgwurTm
	nWIDbOV1vGMyPMUE6cij4HnhbT6bdM6f1n5MT2pp3UQrhUsrbpQs3b9pRwctcwgvuS5Ybc4ebD9
	FSzB6vqLz2PQfmMvotxn39TiNepdwsABYUM9Q4XfEDAW3K6balL3GWw==
X-Gm-Gg: ASbGncvdJA1zNNYdH/HD/TEmzr+PJQeygb9o1zyoNJQpkHsSKVMuCKo1NROjQJnWPmb
	AnvOxVhT6uNbO6e/hcr2sKlfJTBJayY6aE/AstM9qNN27YH02IooSY1PVQRctGVmKLZfqgWXXUB
	d2BJdoRG2DHCtg91YefkSLWSNS8A9znZAsHsWU75QZt5B0jnhXDb1FIhZJ/w==
X-Google-Smtp-Source: AGHT+IFrCfZ4D0Tz9FLntRPgYM7eXIWWgJU0NY5Qh7dI+lredJuzdm7nxJKIT8o0J0gpMR36PuzrChQI2LpyqGFLCjM=
X-Received: by 2002:a17:907:6d27:b0:ac7:7f1d:f268 with SMTP id
 a640c23a62f3a-ac81a6f4107mr202560266b.28.1744100055192; Tue, 08 Apr 2025
 01:14:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
In-Reply-To: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 8 Apr 2025 10:14:03 +0200
X-Gm-Features: ATxdqUGLwLTn2F1NPHWRr0NgiJqHMTRjK4kbMGkFuGGLQf40lz9OK1zwdZlPYdo
Message-ID: <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: RS2VB6R7KEGFQNPHX5XB46LZTSHKDXWE
X-Message-ID-Hash: RS2VB6R7KEGFQNPHX5XB46LZTSHKDXWE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RS2VB6R7KEGFQNPHX5XB46LZTSHKDXWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2807532516657525483=="

--===============2807532516657525483==
Content-Type: multipart/alternative; boundary="0000000000003e395406323ff015"

--0000000000003e395406323ff015
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tim,

at first glance, you're doing everything right. Thanks for taking the time
and reading the docs. We'll need to look into this.

I saw you also opened https://github.com/EttusResearch/uhd/issues/842,
that's very helpful. Sorry I can't give you the right answer immediately!

--M

On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hello
>
>
>
> I've recently run the uhd_power_cal.py script to calibrate the RX paths o=
f
> a B200mini using a calibrated signal generator.
>
> It generated two files, saved at /home/username/.local/share/uhd/cal:
>
>
>
> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>
> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>
>
>
> Using python, I have the following code:
>
> print(f"RX info: {usrp.get_usrp_rx_info()}")
>
> This returns the following:
>
> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mboard_ser=
ial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX', 'rx_id'=
: 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', 'rx_ref_=
power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-RX1', 'r=
x_subdev_spec': 'A:A'}
>
> Running the following functions return false however.
>
> usrp.has_rx_power_reference()
> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA1A#A'):
>
> Why? *How can I use the calibration file in python to obtain estimated
> received power level at the RX side in dBm?* This is not clear in the
> documentation. I would like to do this for the TX side as well.
>
> Thanks!
>
> References:
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dad=
f323c5f00ac4f93b231adc13e34...
> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1da=
df323c5f00ac4f93b231adc13e34c>
>
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a=
5605b43f778efc10f29cb616afb...
> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#=
a5605b43f778efc10f29cb616afbfb7d9>
> https://files.ettus.com/manual/page_power.html
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003e395406323ff015
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tim,</div><div><br></div><div>at first glance, you&#3=
9;re doing everything right. Thanks for taking the time and reading the doc=
s. We&#39;ll need to look into this.</div><div><br></div><div>I saw you als=
o opened <a href=3D"https://github.com/EttusResearch/uhd/issues/842">https:=
//github.com/EttusResearch/uhd/issues/842</a>, that&#39;s very helpful. Sor=
ry I can&#39;t give you the right answer immediately!</div><div><br></div><=
div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM =
Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com">ti=
m.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"box-sizing:borde=
r-box;margin-left:0px;margin-right:0px;margin-top:10px;color:rgb(51,51,51);=
font-family:Helvetica,Arial,sans-serif;font-size:16px"><div style=3D"box-si=
zing:border-box;min-height:1px;padding-left:0px;padding-right:0px;float:lef=
t;width:1442px"><div style=3D"box-sizing:border-box"><div id=3D"m_-44617361=
8698088206gmail-bodyDisplay" style=3D"box-sizing:border-box;word-break:brea=
k-word;line-height:1.71429;overflow:auto;margin-bottom:10px"><div style=3D"=
box-sizing:border-box;word-break:break-word;line-height:1.32;margin-bottom:=
10px"><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:=
1.42">Hello</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;lin=
e-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;paddi=
ng:0px;line-height:1.42">I&#39;ve recently run the uhd_power_cal.py script =
to calibrate the RX paths of a B200mini using a calibrated signal generator=
.</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1=
.42">It generated two files, saved at /home/username/.local/share/uhd/cal:<=
/p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.4=
2">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-=
height:1.42">- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal</p><p style=3D"box-sizing:=
border-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr_rx_tx+rx=
_33ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;=
line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;pa=
dding:0px;line-height:1.42">Using python, I have the following code:</p><pr=
e style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,Con=
solas,&quot;Courier New&quot;,monospace;font-size:15px;padding:13px;margin-=
top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62);word-b=
reak:break-all;background-color:rgb(245,245,245);border:1px solid rgb(204,2=
04,204);border-radius:0px">print(f&quot;RX info: {usrp.get_usrp_rx_info()}&=
quot;)</pre><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-h=
eight:1.42">This returns the following:</p><pre style=3D"box-sizing:border-=
box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;=
,monospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;=
line-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-col=
or:rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">RX=
 info: {&#39;mboard_id&#39;: &#39;B200mini&#39;, &#39;mboard_name&#39;: &#3=
9;B200mini&#39;, &#39;mboard_serial&#39;: &#39;33ECA1A&#39;, &#39;module_se=
rial&#39;: &#39;33ECA1A&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#39;, &#39;r=
x_id&#39;: &#39;Unknown (0xffff)&#39;, &#39;rx_ref_power_key&#39;: &#39;b2x=
xmini_pwr_rx_tx+rx&#39;, &#39;rx_ref_power_serial&#39;: &#39;33ECA1A#A&#39;=
, &#39;rx_serial&#39;: &#39;&#39;, &#39;rx_subdev_name&#39;: &#39;FE-RX1&#3=
9;, &#39;rx_subdev_spec&#39;: &#39;A:A&#39;}</pre><p style=3D"box-sizing:bo=
rder-box;margin:0px;padding:0px;line-height:1.42">Running the following fun=
ctions return false however.</p><pre style=3D"box-sizing:border-box;overflo=
w:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;=
font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;line-height=
:1.71429;color:rgb(62,62,62);word-break:break-all;background-color:rgb(245,=
245,245);border:1px solid rgb(204,204,204);border-radius:0px">usrp.has_rx_p=
ower_reference()<br style=3D"box-sizing:border-box">uhd.usrp.cal.database.h=
as_cal_data(&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;33ECA1A#A&#39;):</pre><di=
v style=3D"box-sizing:border-box"><div style=3D"box-sizing:border-box">Why?=
 <b>How can I use the calibration file in python to obtain estimated receiv=
ed power level at the RX side in dBm?</b> This is not clear in the document=
ation. I would like to do this for the TX side as well.</div><div style=3D"=
box-sizing:border-box">=C2=A0</div><div style=3D"box-sizing:border-box">Tha=
nks!</div><div style=3D"box-sizing:border-box">=C2=A0</div><div style=3D"bo=
x-sizing:border-box">References:</div><div style=3D"box-sizing:border-box">=
<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.h=
tml#a1dadf323c5f00ac4f93b231adc13e34c" rel=3D"nofollow noopener noreferrer"=
 style=3D"box-sizing:border-box;background-color:transparent;color:rgb(4,65=
,35)" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1=
multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34...</a></div><div style=3D=
"box-sizing:border-box"><a href=3D"https://files.ettus.com/manual/classuhd_=
1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afbfb7d9" rel=3D"n=
ofollow noopener noreferrer" style=3D"box-sizing:border-box;background-colo=
r:transparent;color:rgb(4,65,35)" target=3D"_blank">https://files.ettus.com=
/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616a=
fb...</a></div><div style=3D"box-sizing:border-box"><a href=3D"https://file=
s.ettus.com/manual/page_power.html" rel=3D"nofollow noopener noreferrer" st=
yle=3D"box-sizing:border-box;background-color:transparent;color:rgb(4,65,35=
)" target=3D"_blank">https://files.ettus.com/manual/page_power.html</a></di=
v></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003e395406323ff015--

--===============2807532516657525483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2807532516657525483==--
