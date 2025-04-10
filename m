Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C8BA8477B
	for <lists+usrp-users@lfdr.de>; Thu, 10 Apr 2025 17:14:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 872B1385B37
	for <lists+usrp-users@lfdr.de>; Thu, 10 Apr 2025 11:14:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744298054; bh=ooyn1vr3D52Wh0U4//d4Z+K8qrMrq+ELgGxQMhwMlEI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=FNNVdbI2RfVWyNBMr3IA1cVn24QWkEnevCdGrepRSb1MuY30soozdKnc3/3BvrEcy
	 jjdnAoA7jAxkDRnAB+6IwOY1KaPKiQoYsyPhAIJEhN13UEVoDEB9fkNlm9nB1WOxs7
	 icss8Ef/Ugyco6jLn/nGqanzziE5v1AOu63IvlHejVkvmoVJgQZXBOi2OYcMY20LCa
	 cM+4wqAnxUhA0wOgrAYI1/b4mVOptiTn0TYoUWpjCU3DAjsqCO9Df9lUkiTtuUgUba
	 1DR14pqQqxpZLZh9qSQf52L4LOStZCwknu83GjRkIiNxNknNMbo5+mEU6mV6Wz9JJy
	 nykyUKI8DBWTQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 366F3384E7B
	for <usrp-users@lists.ettus.com>; Thu, 10 Apr 2025 11:14:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="HvZEkn9z";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so1704873a12.1
        for <usrp-users@lists.ettus.com>; Thu, 10 Apr 2025 08:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744298046; x=1744902846; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GEshdPK6CVPeAmmS3cRRBl1YVkGaj/nfwFG1bdLpgVQ=;
        b=HvZEkn9zbErOASofJLniEI928Xoz3ZuEHZWbG9MdBI4k3lhBuVljx0CcEaeiXIC/78
         VufS3hFXF8M85FNyx5867SKDlmFikVR42sz478HA839D4JqXvbZXCVd/E0uNy1HG52xF
         bo5/i4cqKJJE/pkt+8XWluPBDksTS9nzVp471agkbWIQAxXWBmI6pfyf3LzEqjwZOgO1
         ycqA1fYKvR73I4z7lZOksFG4Xvs0vAMfAxSo6fckaz/pwAsgKaqj0hKOZEqUl9DnPMUm
         TXPWmRWoJI+Iw6enCQoky/uH5X3BooNnhYWpOv2sWueHVAryUecR7Fjv4IOn9nUWs3tn
         v2OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744298046; x=1744902846;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GEshdPK6CVPeAmmS3cRRBl1YVkGaj/nfwFG1bdLpgVQ=;
        b=KqAmdZF1YX1XPGBQhdvGhyfHj4O/ycBSgekuiYYpXg3DxuPvAjC3ZMcLLWl1rFjre6
         aTQhIn1T1zCNGgfOeR2n0LrQEYupUqrYKSL3V8xaahAaRn524DlNBSpBwQvji0sQccjU
         YVykg4Hijs6CfTOVGmGEMEESsE/VKKQfKOkA7l6Hcjv3Xr2acG+TmDW3hmZG8iUQaVn/
         xJo+bDcPXVPk2v0By1vWHOILmBu+WNPbaKoX8SJJ4o3nEjtlvgDBJcaejGW53L5UQll1
         Z1wqcxq3S4nVnQ10pAPpsM6+D8AraFUyQXBEKooaoYFjpUpB7nPNbJR1gkSodvR4MgY5
         gWWQ==
X-Gm-Message-State: AOJu0Yy1jferB/wfFJ0VRcOVrSt4dvzZglRr8jFpVGDtgbJjl4SzL1K9
	N1qkMKjDz9MxjBbPWzkdaotlUnFo0ztfHmkXkhf8YoP8+3kJVxPgkSjXwn3QBjp8csdveMwHR6Y
	1ZCbFgcVFs6QuM1DcocHfuwfmmi2JvxiGmKBJZyh7YG20cPbhdNqsXA==
X-Gm-Gg: ASbGncumwLaUeOnEp6KpNMpBl9s37X+oVnDlowl0Ai4MjM26jLHq6JdjTfN8APA2v9Y
	60X1S+Ki2wssFxCy/X0arZlMDcZLYX0xf85EWxb3sQ9iPLlJW1izAyMqT17KBcNCNgVDv/qeD2V
	kkwqX86ALf89GfrqWvVSMv1UB4QBuTWLen5A4u0eUggK6CXWdvwYkSQg==
X-Google-Smtp-Source: AGHT+IFm+WWeO8BbuHeS0rkQvA2m6mKy4AOl0LGxG7ILs6vy1OAzEr/R6pQhhcafzZQji7KSWDn3ROL5JQmjs+2xRGE=
X-Received: by 2002:a05:6402:13d2:b0:5e5:ca1b:c425 with SMTP id
 4fb4d7f45d1cf-5f32c3fb2f8mr2455002a12.17.1744298046185; Thu, 10 Apr 2025
 08:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
 <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
 <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com> <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
In-Reply-To: <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 10 Apr 2025 17:13:55 +0200
X-Gm-Features: ATxdqUGp0w4mdqKPnqC2pxmVn_x3Z4kxV69r-co-JbznC9k-N_AkawZJDENkwz0
Message-ID: <CAFOi1A4c2-O_dmW=+YDt69JPnsRREX8nev+WT4-k3KuvP2VyiQ@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: SFJIJ4KCVCFGG7PNGLZ73FHPKYMGUNIE
X-Message-ID-Hash: SFJIJ4KCVCFGG7PNGLZ73FHPKYMGUNIE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFJIJ4KCVCFGG7PNGLZ73FHPKYMGUNIE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8941038601180276822=="

--===============8941038601180276822==
Content-Type: multipart/alternative; boundary="0000000000006cf9df06326e09ee"

--0000000000006cf9df06326e09ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That was very helpful. So there's a discrepancy between what the cal-tool
thinks the path is (~/.local/...) and what UHD thinks it is
(~/snap/code/188/.local).

I'm also a bit surprised about that UHD path. Did you install UHD via snap?
(If yes, I didn't even know that was possible!). I know you say you
installed via apt, but I'm just baffled why UHD thinks this is the right
path.

There are other path APIs, here is what they look like on a system where I
install UHD, manually, into a random location:

>>> uhd.get_lib_path()
'/home/mbr0wn/prefix/master/lib'
>>> uhd.get_pkg_data_path()
'/home/mbr0wn/prefix/master/share/uhd'
>>> uhd.get_cal_data_path()
'/home/mbr0wn/.local/share/uhd/cal'


The first (get_lib_path()) is the path where the libuhd.so file is located.
Is that the case for you?

You can see even there, the cal files are, by default, searched for in
~/.local/share/uhd/cal.

--M

On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hello Martin,
>
> it prints the following: home/username/snap/code/188/.local/share/uhd/cal
> That folder does not exist, the deepest path I can go is
> home/username/snap/code/188/.local/share/
> I manually created the folders uhd/cal and pasted the calibration files
> there. Now the function usrp.has_rx_power_reference() returns True. I'll
> investigate further.
>
> Tim
>
> Op wo 9 apr 2025 om 09:02 schreef Martin Braun <martin.braun@ettus.com>:
>
>> Tim,
>>
>> sorry for suggesting this so late: What does this Python script print:
>>
>> import uhd
>> print(uhd.get_cal_data_path())
>>
>>
>> ?
>>
>> On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
>> tim.vancauwenbergh13@gmail.com> wrote:
>>
>>> Hello Martin,
>>>
>>> thanks for your reply. It would be helpful to know where the driver
>>> looks for the file, but until now I did not find any variable or functi=
on
>>> to obtain this location.
>>>
>>> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with Python
>>> 3.12.3.
>>> The following packages related to uhd are installed via apt:
>>>
>>> *Status**Package Name**Version**Architecture**Description*
>>> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnuradio
>>> universal hardware driver functions
>>> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>>> hardware driver for Ettus Research products - library
>>> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>>> driver for Ettus Research products - Python3
>>> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device support
>>> for SoapySDR
>>> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware driver
>>> for Ettus Research products - doc
>>> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>>> driver for Ettus Research products - host apps
>>> Best regards,
>>>
>>> Tim
>>>
>>> Op di 8 apr 2025 om 10:14 schreef Martin Braun <martin.braun@ettus.com>=
:
>>>
>>>> Tim,
>>>>
>>>> at first glance, you're doing everything right. Thanks for taking the
>>>> time and reading the docs. We'll need to look into this.
>>>>
>>>> I saw you also opened https://github.com/EttusResearch/uhd/issues/842,
>>>> that's very helpful. Sorry I can't give you the right answer immediate=
ly!
>>>>
>>>> --M
>>>>
>>>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>
>>>>> Hello
>>>>>
>>>>>
>>>>>
>>>>> I've recently run the uhd_power_cal.py script to calibrate the RX
>>>>> paths of a B200mini using a calibrated signal generator.
>>>>>
>>>>> It generated two files, saved at /home/username/.local/share/uhd/cal:
>>>>>
>>>>>
>>>>>
>>>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>>>
>>>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>>>
>>>>>
>>>>>
>>>>> Using python, I have the following code:
>>>>>
>>>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>>>
>>>>> This returns the following:
>>>>>
>>>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mboard=
_serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX', 'rx=
_id': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', 'rx_=
ref_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-RX1'=
, 'rx_subdev_spec': 'A:A'}
>>>>>
>>>>> Running the following functions return false however.
>>>>>
>>>>> usrp.has_rx_power_reference()
>>>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA1A#=
A'):
>>>>>
>>>>> Why? *How can I use the calibration file in python to obtain
>>>>> estimated received power level at the RX side in dBm?* This is not
>>>>> clear in the documentation. I would like to do this for the TX side a=
s well.
>>>>>
>>>>> Thanks!
>>>>>
>>>>> References:
>>>>>
>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a=
1dadf323c5f00ac4f93b231adc13e34...
>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#=
a1dadf323c5f00ac4f93b231adc13e34c>
>>>>>
>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.ht=
ml#a5605b43f778efc10f29cb616afb...
>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.h=
tml#a5605b43f778efc10f29cb616afbfb7d9>
>>>>> https://files.ettus.com/manual/page_power.html
>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--0000000000006cf9df06326e09ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That was very helpful. So there&#39;s a discrepancy b=
etween what the cal-tool thinks the path is (~/.local/...) and what UHD thi=
nks it is (~/snap/code/188/.local).</div><div><br></div><div>I&#39;m also a=
 bit surprised about that UHD path. Did you install UHD via snap? (If yes, =
I didn&#39;t even know that was possible!). I know you say you installed vi=
a apt, but I&#39;m just baffled why UHD thinks this is the right path.</div=
><div><br></div><div>There are other path APIs, here is what they look like=
 on a system where I install UHD, manually, into a random location:</div><d=
iv><br></div><div>&gt;&gt;&gt; uhd.get_lib_path()<br>&#39;/home/mbr0wn/pref=
ix/master/lib&#39;<br>&gt;&gt;&gt; uhd.get_pkg_data_path()<br>&#39;/home/mb=
r0wn/prefix/master/share/uhd&#39;<br>&gt;&gt;&gt; uhd.get_cal_data_path()<b=
r>&#39;/home/mbr0wn/.local/share/uhd/cal&#39;</div><div><br></div><div><br>=
</div><div>The first (get_lib_path()) is the path where the libuhd.so file =
is located. Is that the case for you?</div><div><br></div><div>You can see =
even there, the cal files are, by default, searched for in ~/.local/share/u=
hd/cal.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr=
 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.=
vancauwenbergh13@gmail.com">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hello Martin,<div><br></div><div>it prints the following: home/username/sna=
p/code/188/.local/share/uhd/cal</div><div>That folder does not exist, the d=
eepest path I can go is home/username/snap/code/188/.local/share/</div><div=
>I manually created the folders uhd/cal and pasted the calibration files th=
ere. Now the function=C2=A0usrp.has_rx_power_reference() returns True. I&#3=
9;ll investigate further.</div><div><br></div><div>Tim</div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op wo 9 apr 202=
5 om 09:02 schreef Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.co=
m" target=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Tim,</div><div><=
br></div><div>sorry for suggesting this so late: What does this Python scri=
pt print:</div><div><br></div><div>import uhd</div><div>print(uhd.get_cal_d=
ata_path())</div><div><br></div><div><br></div><div>?</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 8, 2=
025 at 10:53=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancau=
wenbergh13@gmail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hello Martin,<div><br></div><div>thanks for your reply. It woul=
d be helpful to know where the driver looks for the file, but until now I d=
id not find any variable or function to obtain this location.</div><div><br=
></div><div>FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with=
 Python 3.12.3.</div><div>The following packages related to uhd are install=
ed via apt:</div><div><br></div><div><table><thead><tr><th><strong>Status</=
strong></th><th><strong>Package Name</strong></th><th><strong>Version</stro=
ng></th><th><strong>Architecture</strong></th><th><strong>Description</stro=
ng></th></tr></thead><tbody><tr><td><code>ii</code></td><td><code>libgnurad=
io-uhd3.10.9t64:amd64</code></td><td>3.10.9.2-1.1ubuntu2</td><td>amd64</td>=
<td>gnuradio universal hardware driver functions</td></tr><tr><td><code>ii<=
/code></td><td><code>libuhd4.6.0t64:amd64</code></td><td>4.6.0.0+ds1-5.1ubu=
ntu0.24.04.1</td><td>amd64</td><td>universal hardware driver for Ettus Rese=
arch products - library</td></tr><tr><td><code>ii</code></td><td><code>pyth=
on3-uhd</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td=
>universal hardware driver for Ettus Research products - Python3</td></tr><=
tr><td><code>ii</code></td><td><code>soapysdr0.8-module-uhd:amd64</code></t=
d><td>0.4.1-4build4</td><td>amd64</td><td>UHD device support for SoapySDR</=
td></tr><tr><td><code>ii</code></td><td><code>uhd-doc</code></td><td>4.6.0.=
0+ds1-5.1ubuntu0.24.04.1</td><td>all</td><td>universal hardware driver for =
Ettus Research products - doc</td></tr><tr><td><code>ii</code></td><td><cod=
e>uhd-host</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td>=
<td>universal hardware driver for Ettus Research products - host apps</td><=
/tr></tbody></table><br></div><div>Best regards,</div><div><br></div><div>T=
im</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">Op di 8 apr 2025 om 10:14 schreef Martin Braun &lt;<a href=3D"mailt=
o:martin.braun@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Tim,</div><div><br></div><div>at first glance, you&#39;re doing ever=
ything right. Thanks for taking the time and reading the docs. We&#39;ll ne=
ed to look into this.</div><div><br></div><div>I saw you also opened <a hre=
f=3D"https://github.com/EttusResearch/uhd/issues/842" target=3D"_blank">htt=
ps://github.com/EttusResearch/uhd/issues/842</a>, that&#39;s very helpful. =
Sorry I can&#39;t give you the right answer immediately!</div><div><br></di=
v><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh =
&lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_blank">tim=
.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"box-sizing:border=
-box;margin-left:0px;margin-right:0px;margin-top:10px;color:rgb(51,51,51);f=
ont-family:Helvetica,Arial,sans-serif;font-size:16px"><div style=3D"box-siz=
ing:border-box;min-height:1px;padding-left:0px;padding-right:0px;float:left=
;width:1442px"><div style=3D"box-sizing:border-box"><div id=3D"m_-909707477=
585944065m_5671169136996207871m_4170279445011706748m_3453399925031800041m_-=
446173618698088206gmail-bodyDisplay" style=3D"box-sizing:border-box;word-br=
eak:break-word;line-height:1.71429;overflow:auto;margin-bottom:10px"><div s=
tyle=3D"box-sizing:border-box;word-break:break-word;line-height:1.32;margin=
-bottom:10px"><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line=
-height:1.42">Hello</p><p style=3D"box-sizing:border-box;margin:0px;padding=
:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0=
px;padding:0px;line-height:1.42">I&#39;ve recently run the uhd_power_cal.py=
 script to calibrate the RX paths of a B200mini using a calibrated signal g=
enerator.</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-=
height:1.42">It generated two files, saved at /home/username/.local/share/u=
hd/cal:</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-he=
ight:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;padding:0=
px;line-height:1.42">- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal</p><p style=3D"box=
-sizing:border-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr_=
rx_tx+rx_33ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;padd=
ing:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margi=
n:0px;padding:0px;line-height:1.42">Using python, I have the following code=
:</p><pre style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Mo=
naco,Consolas,&quot;Courier New&quot;,monospace;font-size:15px;padding:13px=
;margin-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62=
);word-break:break-all;background-color:rgb(245,245,245);border:1px solid r=
gb(204,204,204);border-radius:0px">print(f&quot;RX info: {usrp.get_usrp_rx_=
info()}&quot;)</pre><p style=3D"box-sizing:border-box;margin:0px;padding:0p=
x;line-height:1.42">This returns the following:</p><pre style=3D"box-sizing=
:border-box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier N=
ew&quot;,monospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom=
:13.5px;line-height:1.71429;color:rgb(62,62,62);word-break:break-all;backgr=
ound-color:rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius=
:0px">RX info: {&#39;mboard_id&#39;: &#39;B200mini&#39;, &#39;mboard_name&#=
39;: &#39;B200mini&#39;, &#39;mboard_serial&#39;: &#39;33ECA1A&#39;, &#39;m=
odule_serial&#39;: &#39;33ECA1A&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#39;=
, &#39;rx_id&#39;: &#39;Unknown (0xffff)&#39;, &#39;rx_ref_power_key&#39;: =
&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;rx_ref_power_serial&#39;: &#39;33ECA1=
A#A&#39;, &#39;rx_serial&#39;: &#39;&#39;, &#39;rx_subdev_name&#39;: &#39;F=
E-RX1&#39;, &#39;rx_subdev_spec&#39;: &#39;A:A&#39;}</pre><p style=3D"box-s=
izing:border-box;margin:0px;padding:0px;line-height:1.42">Running the follo=
wing functions return false however.</p><pre style=3D"box-sizing:border-box=
;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,mo=
nospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;lin=
e-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-color:=
rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">usrp.=
has_rx_power_reference()<br style=3D"box-sizing:border-box">uhd.usrp.cal.da=
tabase.has_cal_data(&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;33ECA1A#A&#39;):<=
/pre><div style=3D"box-sizing:border-box"><div style=3D"box-sizing:border-b=
ox">Why? <b>How can I use the calibration file in python to obtain estimate=
d received power level at the RX side in dBm?</b> This is not clear in the =
documentation. I would like to do this for the TX side as well.</div><div s=
tyle=3D"box-sizing:border-box">=C2=A0</div><div style=3D"box-sizing:border-=
box">Thanks!</div><div style=3D"box-sizing:border-box">=C2=A0</div><div sty=
le=3D"box-sizing:border-box">References:</div><div style=3D"box-sizing:bord=
er-box"><a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi=
__usrp.html#a1dadf323c5f00ac4f93b231adc13e34c" rel=3D"nofollow noopener nor=
eferrer" style=3D"box-sizing:border-box;background-color:transparent;color:=
rgb(4,65,35)" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1=
usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34...</a></div><div =
style=3D"box-sizing:border-box"><a href=3D"https://files.ettus.com/manual/c=
lassuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afbfb7d9" =
rel=3D"nofollow noopener noreferrer" style=3D"box-sizing:border-box;backgro=
und-color:transparent;color:rgb(4,65,35)" target=3D"_blank">https://files.e=
ttus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f=
29cb616afb...</a></div><div style=3D"box-sizing:border-box"><a href=3D"http=
s://files.ettus.com/manual/page_power.html" rel=3D"nofollow noopener norefe=
rrer" style=3D"box-sizing:border-box;background-color:transparent;color:rgb=
(4,65,35)" target=3D"_blank">https://files.ettus.com/manual/page_power.html=
</a></div></div></div></div></div></div></div></div>
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
</blockquote></div>

--0000000000006cf9df06326e09ee--

--===============8941038601180276822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8941038601180276822==--
