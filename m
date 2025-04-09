Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB1CA81DC7
	for <lists+usrp-users@lfdr.de>; Wed,  9 Apr 2025 09:03:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0BBD93859E9
	for <lists+usrp-users@lfdr.de>; Wed,  9 Apr 2025 03:03:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744182210; bh=dGGglkXz0FF2LPuHHw30DxKWaN7L86PP7+0GbLddDY4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=O3OZbSGq0Z0GNTuzZRaCgMMih8OYRqIexv/nRJ8lXgE9XMXgWuuv599HHUuux8YLK
	 hDVoX9Gsav6CZGos2O6ouuoxbXGlj7v72wznIvJL70c6Q+H8pnJyMoc8zXiEYBCFUb
	 wjveEbly3xcYDk3CEXRZnhUZNpAGUN4IpjY7CfQzHrIKXzGYpg0T5H9zy5b2envv+l
	 cdxu5Dy5lRYqgjFHKfmt6T54hXjkmTvdhOlIQE+uIMy3+uVHzP2NdAWf5tulyzV1xS
	 /N58uh4DhXl35BuBs7XAhWoNdKf0dw5N4NxIqt9YXYgonh+6d3i8U1XiMmOiz5ILMc
	 mfjnuTcswT9Uw==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 479BF385428
	for <usrp-users@lists.ettus.com>; Wed,  9 Apr 2025 03:02:34 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="iUOW3SzG";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-ac2ab99e16eso1211731166b.0
        for <usrp-users@lists.ettus.com>; Wed, 09 Apr 2025 00:02:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744182153; x=1744786953; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l57PmzlrunD0suNPWyAcLaAcyNXFsq0RHgwqFvvlvQc=;
        b=iUOW3SzGDovgh2YxuwP/nZ+Xk9V8iTm0Qce4LYbMiXhJvuF8FeF43mm3sBSwnTkXi4
         2eMDPYIxU58MVQW4Uve8wgArAeqKb2nhuNGG4RQljnXmBp1NrfR1pZH8VDyDZvO8ISkb
         mwXjsm0tGk3k9zYzesxgE2qgfMcyI2G4dGa7OI4QtZZNzSl608frz+EL7hY92bxEbkTO
         6s5pwm2NiKVKVXhJ1oc4hnT2AOuBnWrvB+5m5imxfLiOvfJx5PWx0YWb0QYSkDvxyq2a
         UiqozcFwCzThwPxPQy//D9zf48d2LoUOAv9yYiRQkMSukkHX6KPTFIql6aCRYIdmQJSG
         zlOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744182153; x=1744786953;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l57PmzlrunD0suNPWyAcLaAcyNXFsq0RHgwqFvvlvQc=;
        b=rX+rwcmw3iGd0+YU9EdLaPS9mSIiG8Lrg2EHrpTeuIvOWxjH5qI1vAmRiUnlhspJ5R
         4hspw1/lrZv9VeK/zIA0M5YC8NS6yxuRCZbfFgG687VqFOokWB31VxBDHiPbD3nQTOJM
         Eth0854H4D15w1PXZ/X39iX2wMirxa5L72lCjIrvBm/oxZ5juWaR5gqXp3HK3KN7EoQ1
         KYuiOfVQpQHOJypYuZKNzu+uDQfKXzyCtYnO9faguR7bnuUpOYkxenPG3ej/cr6XKP+B
         /f8Ihua4+eKtl3cZ7deGnCMUnPddqWt0z1mE/Lmcs7vDNFD9xDCDJCnW9TwzTW4MPkIH
         anKg==
X-Forwarded-Encrypted: i=1; AJvYcCUwaxW0wetUJt6HP3qsRLSWwOGpipI6/AQjxFo276g+hgGPmMDVY0Cr8QbC16IOub8c/nTDG87y/yrN@lists.ettus.com
X-Gm-Message-State: AOJu0YwZn4oId2FvM5SEVCTDSAIIjyCParIsZh5dTmO+fOIqdoTKETQg
	Mk4H1DONkHtRfBkoeopuE4RnM3iu2RoYZ76ceqvebg6oCo+a5UKwL/ql11I/9VxCD7nqc2NctUL
	+vbx+iZw+kktexAgO614dgOaRfXarBLNH7+QeOA+mzEojcIJqM7d42g==
X-Gm-Gg: ASbGncuQbV1/kSsh4n+YtmF92Rz+JVoEdkcRUZ32oy0EeDcVvNoWBp7GXkNsEi1/bBW
	swJoKFVibmZfjQ2g8j6jJAUlMmx/zWvhCYTN2iAIZd+u9B055TW2cHrdbi3zxQO3WaerWVd3GD5
	ZSJhdPpD4SptrCQ6xnHnT+neJfc6/S6rl22GpqKNiDzs8iMK+wdDel
X-Google-Smtp-Source: AGHT+IFIkDjTvrkaPKmV1oYpLMg2dd6PylyyyUC8G/VGPkeR5Kp3eeScc6uOD/8WlNtLEvkVqhiwZPTzPEsB5FEvpMk=
X-Received: by 2002:a17:906:c10f:b0:ac7:f00d:52ec with SMTP id
 a640c23a62f3a-aca9b7463b0mr229014866b.58.1744182152725; Wed, 09 Apr 2025
 00:02:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com> <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
In-Reply-To: <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 9 Apr 2025 09:02:21 +0200
X-Gm-Features: ATxdqUFkdhC7v9yMCIk1lCl1Vr_XzklU7KiIMpqaRZzv6QgL2vAG2pHjm0sf4Ts
Message-ID: <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
To: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>,
	"USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: THQ4YKQDZEJVDJVSUTHDBFECFGH4S3IW
X-Message-ID-Hash: THQ4YKQDZEJVDJVSUTHDBFECFGH4S3IW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THQ4YKQDZEJVDJVSUTHDBFECFGH4S3IW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3310935991981476400=="

--===============3310935991981476400==
Content-Type: multipart/alternative; boundary="000000000000a344540632530d66"

--000000000000a344540632530d66
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Tim,

sorry for suggesting this so late: What does this Python script print:

import uhd
print(uhd.get_cal_data_path())


?

On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hello Martin,
>
> thanks for your reply. It would be helpful to know where the driver looks
> for the file, but until now I did not find any variable or function to
> obtain this location.
>
> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with Python
> 3.12.3.
> The following packages related to uhd are installed via apt:
>
> *Status**Package Name**Version**Architecture**Description*
> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnuradio
> universal hardware driver functions
> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
> hardware driver for Ettus Research products - library
> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
> driver for Ettus Research products - Python3
> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device support
> for SoapySDR
> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware driver
> for Ettus Research products - doc
> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
> driver for Ettus Research products - host apps
> Best regards,
>
> Tim
>
> Op di 8 apr 2025 om 10:14 schreef Martin Braun <martin.braun@ettus.com>:
>
>> Tim,
>>
>> at first glance, you're doing everything right. Thanks for taking the
>> time and reading the docs. We'll need to look into this.
>>
>> I saw you also opened https://github.com/EttusResearch/uhd/issues/842,
>> that's very helpful. Sorry I can't give you the right answer immediately=
!
>>
>> --M
>>
>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>> tim.vancauwenbergh13@gmail.com> wrote:
>>
>>> Hello
>>>
>>>
>>>
>>> I've recently run the uhd_power_cal.py script to calibrate the RX paths
>>> of a B200mini using a calibrated signal generator.
>>>
>>> It generated two files, saved at /home/username/.local/share/uhd/cal:
>>>
>>>
>>>
>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>
>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>
>>>
>>>
>>> Using python, I have the following code:
>>>
>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>
>>> This returns the following:
>>>
>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mboard_s=
erial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX', 'rx_i=
d': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', 'rx_re=
f_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-RX1', =
'rx_subdev_spec': 'A:A'}
>>>
>>> Running the following functions return false however.
>>>
>>> usrp.has_rx_power_reference()
>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA1A#A'=
):
>>>
>>> Why? *How can I use the calibration file in python to obtain estimated
>>> received power level at the RX side in dBm?* This is not clear in the
>>> documentation. I would like to do this for the TX side as well.
>>>
>>> Thanks!
>>>
>>> References:
>>>
>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1d=
adf323c5f00ac4f93b231adc13e34...
>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1=
dadf323c5f00ac4f93b231adc13e34c>
>>>
>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html=
#a5605b43f778efc10f29cb616afb...
>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.htm=
l#a5605b43f778efc10f29cb616afbfb7d9>
>>> https://files.ettus.com/manual/page_power.html
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000a344540632530d66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Tim,</div><div><br></div><div>sorry for suggesting th=
is so late: What does this Python script print:</div><div><br></div><div>im=
port uhd</div><div>print(uhd.get_cal_data_path())</div><div><br></div><div>=
<br></div><div>?</div></div><br><div class=3D"gmail_quote gmail_quote_conta=
iner"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 8, 2025 at 10:53=E2=
=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmai=
l.com">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Martin,<div><br=
></div><div>thanks for your reply. It would be helpful to know where the dr=
iver looks for the file, but until now I did not find any variable or funct=
ion to obtain this location.</div><div><br></div><div>FYI, I am using a vir=
tual environment on Ubuntu 24.0.2 LTS with Python 3.12.3.</div><div>The fol=
lowing packages related to uhd are installed via apt:</div><div><br></div><=
div><table><thead><tr><th><strong>Status</strong></th><th><strong>Package N=
ame</strong></th><th><strong>Version</strong></th><th><strong>Architecture<=
/strong></th><th><strong>Description</strong></th></tr></thead><tbody><tr><=
td><code>ii</code></td><td><code>libgnuradio-uhd3.10.9t64:amd64</code></td>=
<td>3.10.9.2-1.1ubuntu2</td><td>amd64</td><td>gnuradio universal hardware d=
river functions</td></tr><tr><td><code>ii</code></td><td><code>libuhd4.6.0t=
64:amd64</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><t=
d>universal hardware driver for Ettus Research products - library</td></tr>=
<tr><td><code>ii</code></td><td><code>python3-uhd</code></td><td>4.6.0.0+ds=
1-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware driver for Et=
tus Research products - Python3</td></tr><tr><td><code>ii</code></td><td><c=
ode>soapysdr0.8-module-uhd:amd64</code></td><td>0.4.1-4build4</td><td>amd64=
</td><td>UHD device support for SoapySDR</td></tr><tr><td><code>ii</code></=
td><td><code>uhd-doc</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>=
all</td><td>universal hardware driver for Ettus Research products - doc</td=
></tr><tr><td><code>ii</code></td><td><code>uhd-host</code></td><td>4.6.0.0=
+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware driver for=
 Ettus Research products - host apps</td></tr></tbody></table><br></div><di=
v>Best regards,</div><div><br></div><div>Tim</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op di 8 apr 2025 om 10:14=
 schreef Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" target=
=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Tim,</div><div><br></div>=
<div>at first glance, you&#39;re doing everything right. Thanks for taking =
the time and reading the docs. We&#39;ll need to look into this.</div><div>=
<br></div><div>I saw you also opened <a href=3D"https://github.com/EttusRes=
earch/uhd/issues/842" target=3D"_blank">https://github.com/EttusResearch/uh=
d/issues/842</a>, that&#39;s very helpful. Sorry I can&#39;t give you the r=
ight answer immediately!</div><div><br></div><div>--M</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 3, 2=
025 at 11:28=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancau=
wenbergh13@gmail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div style=3D"box-sizing:border-box;margin-left:0px;margin-righ=
t:0px;margin-top:10px;color:rgb(51,51,51);font-family:Helvetica,Arial,sans-=
serif;font-size:16px"><div style=3D"box-sizing:border-box;min-height:1px;pa=
dding-left:0px;padding-right:0px;float:left;width:1442px"><div style=3D"box=
-sizing:border-box"><div id=3D"m_4170279445011706748m_3453399925031800041m_=
-446173618698088206gmail-bodyDisplay" style=3D"box-sizing:border-box;word-b=
reak:break-word;line-height:1.71429;overflow:auto;margin-bottom:10px"><div =
style=3D"box-sizing:border-box;word-break:break-word;line-height:1.32;margi=
n-bottom:10px"><p style=3D"box-sizing:border-box;margin:0px;padding:0px;lin=
e-height:1.42">Hello</p><p style=3D"box-sizing:border-box;margin:0px;paddin=
g:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:=
0px;padding:0px;line-height:1.42">I&#39;ve recently run the uhd_power_cal.p=
y script to calibrate the RX paths of a B200mini using a calibrated signal =
generator.</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line=
-height:1.42">It generated two files, saved at /home/username/.local/share/=
uhd/cal:</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-h=
eight:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;padding:=
0px;line-height:1.42">- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal</p><p style=3D"bo=
x-sizing:border-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr=
_rx_tx+rx_33ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;pad=
ding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;marg=
in:0px;padding:0px;line-height:1.42">Using python, I have the following cod=
e:</p><pre style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,M=
onaco,Consolas,&quot;Courier New&quot;,monospace;font-size:15px;padding:13p=
x;margin-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,6=
2);word-break:break-all;background-color:rgb(245,245,245);border:1px solid =
rgb(204,204,204);border-radius:0px">print(f&quot;RX info: {usrp.get_usrp_rx=
_info()}&quot;)</pre><p style=3D"box-sizing:border-box;margin:0px;padding:0=
px;line-height:1.42">This returns the following:</p><pre style=3D"box-sizin=
g:border-box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier =
New&quot;,monospace;font-size:15px;padding:13px;margin-top:0px;margin-botto=
m:13.5px;line-height:1.71429;color:rgb(62,62,62);word-break:break-all;backg=
round-color:rgb(245,245,245);border:1px solid rgb(204,204,204);border-radiu=
s:0px">RX info: {&#39;mboard_id&#39;: &#39;B200mini&#39;, &#39;mboard_name&=
#39;: &#39;B200mini&#39;, &#39;mboard_serial&#39;: &#39;33ECA1A&#39;, &#39;=
module_serial&#39;: &#39;33ECA1A&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#39=
;, &#39;rx_id&#39;: &#39;Unknown (0xffff)&#39;, &#39;rx_ref_power_key&#39;:=
 &#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;rx_ref_power_serial&#39;: &#39;33ECA=
1A#A&#39;, &#39;rx_serial&#39;: &#39;&#39;, &#39;rx_subdev_name&#39;: &#39;=
FE-RX1&#39;, &#39;rx_subdev_spec&#39;: &#39;A:A&#39;}</pre><p style=3D"box-=
sizing:border-box;margin:0px;padding:0px;line-height:1.42">Running the foll=
owing functions return false however.</p><pre style=3D"box-sizing:border-bo=
x;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,m=
onospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;li=
ne-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-color=
:rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">usrp=
.has_rx_power_reference()<br style=3D"box-sizing:border-box">uhd.usrp.cal.d=
atabase.has_cal_data(&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;33ECA1A#A&#39;):=
</pre><div style=3D"box-sizing:border-box"><div style=3D"box-sizing:border-=
box">Why? <b>How can I use the calibration file in python to obtain estimat=
ed received power level at the RX side in dBm?</b> This is not clear in the=
 documentation. I would like to do this for the TX side as well.</div><div =
style=3D"box-sizing:border-box">=C2=A0</div><div style=3D"box-sizing:border=
-box">Thanks!</div><div style=3D"box-sizing:border-box">=C2=A0</div><div st=
yle=3D"box-sizing:border-box">References:</div><div style=3D"box-sizing:bor=
der-box"><a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1mult=
i__usrp.html#a1dadf323c5f00ac4f93b231adc13e34c" rel=3D"nofollow noopener no=
referrer" style=3D"box-sizing:border-box;background-color:transparent;color=
:rgb(4,65,35)" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_=
1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34...</a></div><div=
 style=3D"box-sizing:border-box"><a href=3D"https://files.ettus.com/manual/=
classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afbfb7d9"=
 rel=3D"nofollow noopener noreferrer" style=3D"box-sizing:border-box;backgr=
ound-color:transparent;color:rgb(4,65,35)" target=3D"_blank">https://files.=
ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10=
f29cb616afb...</a></div><div style=3D"box-sizing:border-box"><a href=3D"htt=
ps://files.ettus.com/manual/page_power.html" rel=3D"nofollow noopener noref=
errer" style=3D"box-sizing:border-box;background-color:transparent;color:rg=
b(4,65,35)" target=3D"_blank">https://files.ettus.com/manual/page_power.htm=
l</a></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a344540632530d66--

--===============3310935991981476400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3310935991981476400==--
