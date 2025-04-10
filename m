Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BF3A83C35
	for <lists+usrp-users@lfdr.de>; Thu, 10 Apr 2025 10:14:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FC98385BFF
	for <lists+usrp-users@lfdr.de>; Thu, 10 Apr 2025 04:14:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744272861; bh=xgI8c0/cOjuWVqdGA5IWTXZBAi/tP69X4/p1Gg5PljQ=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=k0Rlj+Tn5N7T0Ts+v1jde71kKOH1XprjIHOvMKvuBHNZ06I3LJltee/OvVbAL0RVh
	 c7oPOFvzI0dVhwMUDsT7gAryIZXibUVJeLtHqoI4yP2Nq4RuIQLfwNHrz2TDRI0bHr
	 l88joZmcU5uUOXWBF1utT0vXkL8yoaMndjwiz7/UWdsRg30UiQRsjh/V8m6Fi20BcG
	 l129VwdsJ2DieNxauUNRKFY1zwRYBuTuujg/5AZdUmM8zK+bSZ/w+KT4c9li+SHt34
	 hiASD+fXe+bqS2MPBA1IdFv3gp7elwIOK4/mVyiYHiCBToent38UJgFNNofVvVKNm5
	 G5wzH/mgB5h8w==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 1F2913853B5
	for <usrp-users@lists.ettus.com>; Thu, 10 Apr 2025 04:13:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QKnp+i/o";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7c58974ed57so55880885a.2
        for <usrp-users@lists.ettus.com>; Thu, 10 Apr 2025 01:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744272806; x=1744877606; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/r3JbPjgdXWCT4uKXELhJ3QtSm4jibxSx7elfMrSXZg=;
        b=QKnp+i/ozuY1nsQLqr5X5qskCMibht+EYB2K2Zrw8FLMx3/U5k+N91qU7TiMsPfXU/
         zUX8GObpp3pUtkh/bxkSvSLh6mXT0j/h2Bnl+ICYTDyI84aoU1XFJU5fjgrYwAIYa48b
         yBislAAQXci8DXY1Q+5F1JxRb2AgsUKER70sLCuPMQ88+Aeo+Rj3NmeyrbUui9srK3Cu
         R7hH5aYg9Hjx8F2jIT7P3yHOfwDA9PFpnlRjJFfai7rduqBUVc/A+FAmCvhw3VQRdDbN
         E/7UO8xj82GeNHO2Ejc6SHsLucWqoquEUCt7I5VrsYs/vjhjGIfeAFbcT6W58zWOh/lI
         RSDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744272806; x=1744877606;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/r3JbPjgdXWCT4uKXELhJ3QtSm4jibxSx7elfMrSXZg=;
        b=fhGS2B5HNevCm8f4QmxvlV9v7RFmRhyg/dF+1xJxAYSUamD8ar7ncernu9k32/RTNY
         jTyjLNBeUIHc6Yp4ZfAwcJQHwwtnOe6w+Mv138dPxXnfwMipjhgHmLSsqWhzNS5wRQFJ
         rrfb5dZYYih2JxdHh3lK6JrMBLPTiDZ6yf5OduwM2gYpIPd52iyDtZOCD8pmqCFlDuqt
         bmbUY/92AhFLm/qg0rz0UHimECMRLEcXaGFrnpwWX2aj1vfkJHPazizzJDrgzQ8QAkPb
         ruXCuHvn+hhDCQi1fItGu5uoiNMpRJV0F5NV9U5keJQgt0u+bWXP4gTsWL7nIA0vILZp
         3QAw==
X-Gm-Message-State: AOJu0Yz1RtcvDaJatZykQXCNTCFXMWdoLqLZTGeQyBsFT2m56mioabdK
	gB/PzdFxwz//yZR1wiJPMSHSk/UlH4Mf5/Fee+k9R0lH3oTvnW8lKZLOlEBf9yDaTI2GCtcBRDc
	3tiB0gjyaVkcCgtznl36/Ttssp1c=
X-Gm-Gg: ASbGncu9M1Es03CeexmG/R4mSEi8nnfYms5qKNkhACtzcFzWs/1xqhNniVJJymGL2Nz
	fwUTtVanig5N4F7lUwMKDmqi6D/fB4Mn5DWA5BYVg/qOkvlXqWNhn0YcCyvRzjB5nPf/SzWkjYu
	kSsx+ExsttK1/3OpCS81sv
X-Google-Smtp-Source: AGHT+IHQ0MmVzy3rvV2Q5teQcVCotu+Gl9gWEJx/21qSy4VlmBQ8ldX1X4/TkgSDQnbya41PPPierOGLSIgbmNPM3EM=
X-Received: by 2002:a05:620a:4050:b0:7c5:48b8:b4ac with SMTP id
 af79cd13be357-7c7a768502amr223161085a.34.1744272806226; Thu, 10 Apr 2025
 01:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
 <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com> <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
In-Reply-To: <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Thu, 10 Apr 2025 10:13:15 +0200
X-Gm-Features: ATxdqUEoFuzr3kGEujlLeZhBpQeGQ8mMX0JC2pqPaTtAoZyu29Jh5lhqM4DFmbw
Message-ID: <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: POK4CQBJPBUNWBMBD64JZY47RCLZMCLI
X-Message-ID-Hash: POK4CQBJPBUNWBMBD64JZY47RCLZMCLI
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/POK4CQBJPBUNWBMBD64JZY47RCLZMCLI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8732839076179493818=="

--===============8732839076179493818==
Content-Type: multipart/alternative; boundary="00000000000001b06106326829d3"

--00000000000001b06106326829d3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Martin,

it prints the following: home/username/snap/code/188/.local/share/uhd/cal
That folder does not exist, the deepest path I can go is
home/username/snap/code/188/.local/share/
I manually created the folders uhd/cal and pasted the calibration files
there. Now the function usrp.has_rx_power_reference() returns True. I'll
investigate further.

Tim

Op wo 9 apr 2025 om 09:02 schreef Martin Braun <martin.braun@ettus.com>:

> Tim,
>
> sorry for suggesting this so late: What does this Python script print:
>
> import uhd
> print(uhd.get_cal_data_path())
>
>
> ?
>
> On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
> tim.vancauwenbergh13@gmail.com> wrote:
>
>> Hello Martin,
>>
>> thanks for your reply. It would be helpful to know where the driver look=
s
>> for the file, but until now I did not find any variable or function to
>> obtain this location.
>>
>> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with Python
>> 3.12.3.
>> The following packages related to uhd are installed via apt:
>>
>> *Status**Package Name**Version**Architecture**Description*
>> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnuradio
>> universal hardware driver functions
>> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>> hardware driver for Ettus Research products - library
>> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>> driver for Ettus Research products - Python3
>> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device support
>> for SoapySDR
>> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware driver
>> for Ettus Research products - doc
>> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>> driver for Ettus Research products - host apps
>> Best regards,
>>
>> Tim
>>
>> Op di 8 apr 2025 om 10:14 schreef Martin Braun <martin.braun@ettus.com>:
>>
>>> Tim,
>>>
>>> at first glance, you're doing everything right. Thanks for taking the
>>> time and reading the docs. We'll need to look into this.
>>>
>>> I saw you also opened https://github.com/EttusResearch/uhd/issues/842,
>>> that's very helpful. Sorry I can't give you the right answer immediatel=
y!
>>>
>>> --M
>>>
>>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>
>>>> Hello
>>>>
>>>>
>>>>
>>>> I've recently run the uhd_power_cal.py script to calibrate the RX path=
s
>>>> of a B200mini using a calibrated signal generator.
>>>>
>>>> It generated two files, saved at /home/username/.local/share/uhd/cal:
>>>>
>>>>
>>>>
>>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>>
>>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>>
>>>>
>>>>
>>>> Using python, I have the following code:
>>>>
>>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>>
>>>> This returns the following:
>>>>
>>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mboard_=
serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX', 'rx_=
id': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', 'rx_r=
ef_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-RX1',=
 'rx_subdev_spec': 'A:A'}
>>>>
>>>> Running the following functions return false however.
>>>>
>>>> usrp.has_rx_power_reference()
>>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA1A#A=
'):
>>>>
>>>> Why? *How can I use the calibration file in python to obtain estimated
>>>> received power level at the RX side in dBm?* This is not clear in the
>>>> documentation. I would like to do this for the TX side as well.
>>>>
>>>> Thanks!
>>>>
>>>> References:
>>>>
>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1=
dadf323c5f00ac4f93b231adc13e34...
>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a=
1dadf323c5f00ac4f93b231adc13e34c>
>>>>
>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.htm=
l#a5605b43f778efc10f29cb616afb...
>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.ht=
ml#a5605b43f778efc10f29cb616afbfb7d9>
>>>> https://files.ettus.com/manual/page_power.html
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--00000000000001b06106326829d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Martin,<div><br></div><div>it prints the following: =
home/username/snap/code/188/.local/share/uhd/cal</div><div>That folder does=
 not exist, the deepest path I can go is home/username/snap/code/188/.local=
/share/</div><div>I manually created the folders uhd/cal and pasted the cal=
ibration files there. Now the function=C2=A0usrp.has_rx_power_reference() r=
eturns True. I&#39;ll investigate further.</div><div><br></div><div>Tim</di=
v></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"lt=
r" class=3D"gmail_attr">Op wo 9 apr 2025 om 09:02 schreef Martin Braun &lt;=
<a href=3D"mailto:martin.braun@ettus.com">martin.braun@ettus.com</a>&gt;:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div>Tim,</div><div><br></div><div>sorry for suggesting this so late: What =
does this Python script print:</div><div><br></div><div>import uhd</div><di=
v>print(uhd.get_cal_data_path())</div><div><br></div><div><br></div><div>?<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=
=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_blank">tim.vancauwenb=
ergh13@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr">Hello Martin,<div><br></div><div>thanks fo=
r your reply. It would be helpful to know where the driver looks for the fi=
le, but until now I did not find any variable or function to obtain this lo=
cation.</div><div><br></div><div>FYI, I am using a virtual environment on U=
buntu 24.0.2 LTS with Python 3.12.3.</div><div>The following packages relat=
ed to uhd are installed via apt:</div><div><br></div><div><table><thead><tr=
><th><strong>Status</strong></th><th><strong>Package Name</strong></th><th>=
<strong>Version</strong></th><th><strong>Architecture</strong></th><th><str=
ong>Description</strong></th></tr></thead><tbody><tr><td><code>ii</code></t=
d><td><code>libgnuradio-uhd3.10.9t64:amd64</code></td><td>3.10.9.2-1.1ubunt=
u2</td><td>amd64</td><td>gnuradio universal hardware driver functions</td><=
/tr><tr><td><code>ii</code></td><td><code>libuhd4.6.0t64:amd64</code></td><=
td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware =
driver for Ettus Research products - library</td></tr><tr><td><code>ii</cod=
e></td><td><code>python3-uhd</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1<=
/td><td>amd64</td><td>universal hardware driver for Ettus Research products=
 - Python3</td></tr><tr><td><code>ii</code></td><td><code>soapysdr0.8-modul=
e-uhd:amd64</code></td><td>0.4.1-4build4</td><td>amd64</td><td>UHD device s=
upport for SoapySDR</td></tr><tr><td><code>ii</code></td><td><code>uhd-doc<=
/code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>all</td><td>universal=
 hardware driver for Ettus Research products - doc</td></tr><tr><td><code>i=
i</code></td><td><code>uhd-host</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04=
.1</td><td>amd64</td><td>universal hardware driver for Ettus Research produ=
cts - host apps</td></tr></tbody></table><br></div><div>Best regards,</div>=
<div><br></div><div>Tim</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Op di 8 apr 2025 om 10:14 schreef Martin Brau=
n &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.br=
aun@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Tim,</div><div><br></div><div>at first glance,=
 you&#39;re doing everything right. Thanks for taking the time and reading =
the docs. We&#39;ll need to look into this.</div><div><br></div><div>I saw =
you also opened <a href=3D"https://github.com/EttusResearch/uhd/issues/842"=
 target=3D"_blank">https://github.com/EttusResearch/uhd/issues/842</a>, tha=
t&#39;s very helpful. Sorry I can&#39;t give you the right answer immediate=
ly!</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 3, 2025 at 11:28=E2=80=AF=
AM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com"=
 target=3D"_blank">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div styl=
e=3D"box-sizing:border-box;margin-left:0px;margin-right:0px;margin-top:10px=
;color:rgb(51,51,51);font-family:Helvetica,Arial,sans-serif;font-size:16px"=
><div style=3D"box-sizing:border-box;min-height:1px;padding-left:0px;paddin=
g-right:0px;float:left;width:1442px"><div style=3D"box-sizing:border-box"><=
div id=3D"m_5671169136996207871m_4170279445011706748m_3453399925031800041m_=
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
</blockquote></div>

--00000000000001b06106326829d3--

--===============8732839076179493818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8732839076179493818==--
