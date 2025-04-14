Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D7416A88089
	for <lists+usrp-users@lfdr.de>; Mon, 14 Apr 2025 14:38:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7D47385C2B
	for <lists+usrp-users@lfdr.de>; Mon, 14 Apr 2025 08:38:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744634293; bh=4S9bhoTbwNZ4sVrfI7mNn1D7WqQBr7NHTkFkGPlQuFA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=WuhUHjmi794QQXG043OMs+npejpw6Hq522MAdztFnf08p0AaySbIAqOFQHfZDGba2
	 y95GDzup4sN1TkL+heir4VVt9bd060nor3dpzmh49UMpltxwjNP/H61mdnoRxnxwdO
	 0keh4ENE7rF9wi4A+NnR4W+szEfzOgyajHshSW83facWLnOxZQEfzBdMwPN+dRooz6
	 M2B/G0ox75SMq4uHFWnwn9KWwHEJ0ZzOn9u82C+EY9EUAedYmLeqoQXBTdeuO07nUt
	 lYL4h0997lPAOvYyRGHUvbvUZh8AnhPE+PR1sGUQuVk6UK2xGPHfZvUOv9DDAmON+w
	 oWL+GzAmPB0xw==
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id B3601385BD6
	for <usrp-users@lists.ettus.com>; Mon, 14 Apr 2025 08:37:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="q/4lC0OH";
	dkim-atps=neutral
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-abf3d64849dso842039166b.3
        for <usrp-users@lists.ettus.com>; Mon, 14 Apr 2025 05:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744634252; x=1745239052; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TqrgT6Clizx3f0Whrk9wVY5rmK1O+dM5Su5FtAa0wfE=;
        b=q/4lC0OHy+/pZ+t886OLCDTWg2yvgMZgpm2KgXkltU7lM26Tzje1VRKEE/tcS8m9rx
         NRQXa3VWmZl3O3fs8J97Ln8Ux+NBC8Z+N94M2alMqN0KnDEDFPGGMkKN2brFIgYJ6Owu
         LLP+bo79vP2yucxN1HgCDQ0OjidsD8PuG1oRre8txf6Ev4PPqcdYOJRNptYuEiKlWumS
         U9bhJ+ffixY8BNczC8hHBfaR4bNSbLwYi1KrclAiNKTnbE2ktS6rY09+YlwKaTbV19qN
         G7OB/DZExM0Dxhug2gkNwV0rdF2q3F5UVKUtAso8BvC5CWqvW9zmqI9baSTl5VG5gi/+
         n26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744634252; x=1745239052;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TqrgT6Clizx3f0Whrk9wVY5rmK1O+dM5Su5FtAa0wfE=;
        b=AmAPNoXWFR4alrPfS7XBVkVo82xPypfG459GYhAQ0GkI/xI1aDyyKBrNTJLwMJ9RVh
         eu8XqvT20g5KeBisppUDqrguTO8GM4Y39+KyuxztPiwdnQUY4K+lEJ2AZgTLDT156q/z
         B/Ni+cHv4xYULwrxeC4IvvsWFSCbJBTDC5eawqmAutLozV5Y6DwlOwQ4+3MCDKZoj51G
         LadMV532Vqfz5D6gRgDk82VeXd73eMYFvMcRzTsWYh4qCKATj6FotqSzvFWWnxPvqdja
         EW6CmfZUEBr7qG4OiF/THHzxKcaCq2Gh8hkBGkr9xvEUey4aKkzgXWF7hwJs6jgJrrer
         fFdg==
X-Gm-Message-State: AOJu0YzNl4wvnNLi5uPVOyTNHw8CoZw+o5FomU+ODpJ/I6RINYctR5Ga
	epWxQ/Df8rTYENYBRo/nNOQJKRVZqPzpXhtMhl0UUsWDbXTuqbpMUsbjUIyf0ufvDq28G302AOM
	FvnDmyobQbnFzO+NBDJU/aDqZR7bgUosrNRd3eCHikC+gcAf5Y1U/Gg==
X-Gm-Gg: ASbGncuA1B7jfW55rvrbUrbQJwibiuB/bRGqiW6ukcS4cOGElBlB48x/lcWoRIWtIH1
	BsNMUlBeupTFtdhTyLnJ7Ru/r8KC5Lq6Q60WYr/2iy5zaDDgNKc2e7AVcrXA1+e0oAHGkMBtwVc
	YBCVwQvF8DfXELODhFlE3kjwPwnc+pNsWw5OQB+6E2qYL0TLjl0orYnd2gQwasH5zm
X-Google-Smtp-Source: AGHT+IEJOmUJ2V2xZu+ZEckGblBWM6f+6n8M1wllcOMJZU7I2e1imAykh9AcySbcpnVTbcqLx8fCamqmTOJRmq/uKNQ=
X-Received: by 2002:a17:907:7b8e:b0:aca:a163:aa3d with SMTP id
 a640c23a62f3a-acad34394e3mr993062066b.3.1744634251803; Mon, 14 Apr 2025
 05:37:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
 <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
 <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
 <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
 <CAFOi1A4c2-O_dmW=+YDt69JPnsRREX8nev+WT4-k3KuvP2VyiQ@mail.gmail.com>
 <CAAc7u9oyL7Vh97-d0BBrcXA2VS0syFsygJ6h89axf7KJsdCKFw@mail.gmail.com>
 <CAFOi1A68Q32BFxgRehHcGKZYPpAo5Ht9bPRtqiJvyqWr-Bc7iA@mail.gmail.com> <CAAc7u9q6q1fEhY_f9mprdRm8ofMT=mBN66L_HZ5=D2KAbdV1Tw@mail.gmail.com>
In-Reply-To: <CAAc7u9q6q1fEhY_f9mprdRm8ofMT=mBN66L_HZ5=D2KAbdV1Tw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 14 Apr 2025 14:37:20 +0200
X-Gm-Features: ATxdqUGGMkg-4eb6Istqr4MWb6HXSycrbOQb4OtU8WxfDl6Ej9JXNZeyXnjdhbU
Message-ID: <CAFOi1A4oDXk8JZb9+WTaeQr0+o3gxnaCv0TH=UuG84obW3xeGA@mail.gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: THIFDRUQ6WJIGVZH3VRDJ6FS7EGD7UBK
X-Message-ID-Hash: THIFDRUQ6WJIGVZH3VRDJ6FS7EGD7UBK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THIFDRUQ6WJIGVZH3VRDJ6FS7EGD7UBK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3014835273922846025=="

--===============3014835273922846025==
Content-Type: multipart/alternative; boundary="000000000000d7a8090632bc50a5"

--000000000000d7a8090632bc50a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim and others affected by this,

I think that narrows down. And I'm afraid UHD is not at fault here, or
rather, it has no way of knowing any better, at least I'm pretty confident
that is the case.

UHD is designed to follow the freedeskop specifications:
https://specifications.freedesktop.org/basedir-spec/latest/

...that means if you specify XDG_DATA_HOME, then UHD will use that value.
Not all data that UHD stores or loads is subject to this path, but the
calibration data are. So UHD is looking for the data in the "right spot",
and if you need a different path, you have to specify UHD_CAL_DATA_PATH
(see earlier message).

There's still two mysteries here:

1. Why did usrp_calibrator store the data in `/.local`?

My hypothesis is that it was run in a context where XDG_DATA_HOME was not
set. The code to store and retrieve cal data is the same between
usrp_calibrator and normal UHD operations. That's how we make sure the
paths aren't the same.

2. Why is XDG_DATA_HOME set in your case?

Maybe VS Code is installed from snap, and populates that variable? This is
ultimately a question for you, I'm afraid.

--M

On Mon, Apr 14, 2025 at 12:58=E2=80=AFPM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hi Martin,
>
> running echo $XDG_DATA_HOME in the virtual environment gives:
> /home/username/snap/code/188/.local/share
> I am using Visual Studio Code, if it might help.
>
> Tim
>
> Op ma 14 apr 2025 om 11:51 schreef Martin Braun <martin.braun@ettus.com>:
>
>> Ah, those are more recent than UHD 4.6.
>>
>> Is the environment variable XDG_DATA_HOME set on your system? What does
>> "echo $XDG_DATA_HOME" print for you?
>>
>> BTW, if the only problem is that the cal data path is misattributed, the=
n
>> you can set the environment variable
>> UHD_CAL_DATA_PATH=3D~/.local/uhd/shrae/uhd/cal. That should do the trick=
.
>> However, I would still like to figure out what caused this.
>>
>> --M
>>
>> On Mon, Apr 14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh <
>> tim.vancauwenbergh13@gmail.com> wrote:
>>
>>> Hello Martin,
>>>
>>> only installed via apt, I did not specify snap.
>>> uhd.get_lib_path() returns: /lib/x86_64-linux-gnu -> libuhd.so found he=
re
>>> uhd.get_pkg_path() returns: /lib
>>> I am unable to use uhd.get_pkg_data_path() and uhd.get_module_paths() -=
>
>>> uhd has no attribute
>>>
>>> Tim
>>>
>>> Op do 10 apr 2025 om 17:14 schreef Martin Braun <martin.braun@ettus.com
>>> >:
>>>
>>>> That was very helpful. So there's a discrepancy between what the
>>>> cal-tool thinks the path is (~/.local/...) and what UHD thinks it is
>>>> (~/snap/code/188/.local).
>>>>
>>>> I'm also a bit surprised about that UHD path. Did you install UHD via
>>>> snap? (If yes, I didn't even know that was possible!). I know you say =
you
>>>> installed via apt, but I'm just baffled why UHD thinks this is the rig=
ht
>>>> path.
>>>>
>>>> There are other path APIs, here is what they look like on a system
>>>> where I install UHD, manually, into a random location:
>>>>
>>>> >>> uhd.get_lib_path()
>>>> '/home/mbr0wn/prefix/master/lib'
>>>> >>> uhd.get_pkg_data_path()
>>>> '/home/mbr0wn/prefix/master/share/uhd'
>>>> >>> uhd.get_cal_data_path()
>>>> '/home/mbr0wn/.local/share/uhd/cal'
>>>>
>>>>
>>>> The first (get_lib_path()) is the path where the libuhd.so file is
>>>> located. Is that the case for you?
>>>>
>>>> You can see even there, the cal files are, by default, searched for in
>>>> ~/.local/share/uhd/cal.
>>>>
>>>> --M
>>>>
>>>> On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh <
>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>
>>>>> Hello Martin,
>>>>>
>>>>> it prints the following:
>>>>> home/username/snap/code/188/.local/share/uhd/cal
>>>>> That folder does not exist, the deepest path I can go is
>>>>> home/username/snap/code/188/.local/share/
>>>>> I manually created the folders uhd/cal and pasted the calibration
>>>>> files there. Now the function usrp.has_rx_power_reference() returns T=
rue.
>>>>> I'll investigate further.
>>>>>
>>>>> Tim
>>>>>
>>>>> Op wo 9 apr 2025 om 09:02 schreef Martin Braun <martin.braun@ettus.co=
m
>>>>> >:
>>>>>
>>>>>> Tim,
>>>>>>
>>>>>> sorry for suggesting this so late: What does this Python script prin=
t:
>>>>>>
>>>>>> import uhd
>>>>>> print(uhd.get_cal_data_path())
>>>>>>
>>>>>>
>>>>>> ?
>>>>>>
>>>>>> On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
>>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>>
>>>>>>> Hello Martin,
>>>>>>>
>>>>>>> thanks for your reply. It would be helpful to know where the driver
>>>>>>> looks for the file, but until now I did not find any variable or fu=
nction
>>>>>>> to obtain this location.
>>>>>>>
>>>>>>> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with
>>>>>>> Python 3.12.3.
>>>>>>> The following packages related to uhd are installed via apt:
>>>>>>>
>>>>>>> *Status**Package Name**Version**Architecture**Description*
>>>>>>> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnuradi=
o
>>>>>>> universal hardware driver functions
>>>>>>> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 univer=
sal
>>>>>>> hardware driver for Ettus Research products - library
>>>>>>> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>>>>>>> hardware driver for Ettus Research products - Python3
>>>>>>> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device
>>>>>>> support for SoapySDR
>>>>>>> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware
>>>>>>> driver for Ettus Research products - doc
>>>>>>> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>>>>>>> driver for Ettus Research products - host apps
>>>>>>> Best regards,
>>>>>>>
>>>>>>> Tim
>>>>>>>
>>>>>>> Op di 8 apr 2025 om 10:14 schreef Martin Braun <
>>>>>>> martin.braun@ettus.com>:
>>>>>>>
>>>>>>>> Tim,
>>>>>>>>
>>>>>>>> at first glance, you're doing everything right. Thanks for taking
>>>>>>>> the time and reading the docs. We'll need to look into this.
>>>>>>>>
>>>>>>>> I saw you also opened
>>>>>>>> https://github.com/EttusResearch/uhd/issues/842, that's very
>>>>>>>> helpful. Sorry I can't give you the right answer immediately!
>>>>>>>>
>>>>>>>> --M
>>>>>>>>
>>>>>>>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>>>>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>>>>
>>>>>>>>> Hello
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> I've recently run the uhd_power_cal.py script to calibrate the RX
>>>>>>>>> paths of a B200mini using a calibrated signal generator.
>>>>>>>>>
>>>>>>>>> It generated two files, saved at
>>>>>>>>> /home/username/.local/share/uhd/cal:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>>>>>>>
>>>>>>>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Using python, I have the following code:
>>>>>>>>>
>>>>>>>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>>>>>>>
>>>>>>>>> This returns the following:
>>>>>>>>>
>>>>>>>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mb=
oard_serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX',=
 'rx_id': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', =
'rx_ref_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-=
RX1', 'rx_subdev_spec': 'A:A'}
>>>>>>>>>
>>>>>>>>> Running the following functions return false however.
>>>>>>>>>
>>>>>>>>> usrp.has_rx_power_reference()
>>>>>>>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33EC=
A1A#A'):
>>>>>>>>>
>>>>>>>>> Why? *How can I use the calibration file in python to obtain
>>>>>>>>> estimated received power level at the RX side in dBm?* This is
>>>>>>>>> not clear in the documentation. I would like to do this for the T=
X side as
>>>>>>>>> well.
>>>>>>>>>
>>>>>>>>> Thanks!
>>>>>>>>>
>>>>>>>>> References:
>>>>>>>>>
>>>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#a1dadf323c5f00ac4f93b231adc13e34...
>>>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.h=
tml#a1dadf323c5f00ac4f93b231adc13e34c>
>>>>>>>>>
>>>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1databas=
e.html#a5605b43f778efc10f29cb616afb...
>>>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1databa=
se.html#a5605b43f778efc10f29cb616afbfb7d9>
>>>>>>>>> https://files.ettus.com/manual/page_power.html
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000d7a8090632bc50a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Tim and others affected by this,</div><div><br></d=
iv><div>I think that narrows down. And I&#39;m afraid UHD is not at fault h=
ere, or rather, it has no way of knowing any better, at least I&#39;m prett=
y confident that is the case.</div><div><br></div><div>UHD is designed to f=
ollow the freedeskop specifications:</div><div><a href=3D"https://specifica=
tions.freedesktop.org/basedir-spec/latest/">https://specifications.freedesk=
top.org/basedir-spec/latest/</a></div><div><br></div><div>...that means if =
you specify XDG_DATA_HOME, then UHD will use that value. Not all data that =
UHD stores or loads is subject to this path, but the calibration data are. =
So UHD is looking for the data in the &quot;right spot&quot;, and if you ne=
ed a different path, you have to specify UHD_CAL_DATA_PATH (see earlier mes=
sage).</div><div><br></div><div>There&#39;s still two mysteries here:</div>=
<div><br></div><div>1. Why did usrp_calibrator store the data in `/.local`?=
</div><div><br></div><div>My hypothesis is that it was run in a context whe=
re XDG_DATA_HOME was not set. The code to store and retrieve cal data is th=
e same between usrp_calibrator and normal UHD operations. That&#39;s how we=
 make sure the paths aren&#39;t the same.</div><div><br></div><div>2. Why i=
s XDG_DATA_HOME set in your case?</div><div><br></div><div>Maybe VS Code is=
 installed from snap, and populates that variable? This is ultimately a que=
stion for you, I&#39;m afraid.</div><div><br></div><div>--M</div></div><br>=
<div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, Apr 14, 2025 at 12:58=E2=80=AFPM Tim Vancauwenbergh &lt=
;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com">tim.vancauwenbergh13@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi Martin,<div><br></div><div>running echo $XDG_DATA=
_HOME in the virtual environment gives: /home/username/snap/code/188/.local=
/share</div><div>I am using Visual Studio Code, if it might help.</div><div=
><br></div><div>Tim</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">Op ma 14 apr 2025 om 11:51 schreef Martin Braun &l=
t;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@=
ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Ah, those are more recent than UHD 4.6.</div><div>=
<br></div><div>Is the environment variable XDG_DATA_HOME set on your system=
? What does &quot;echo $XDG_DATA_HOME&quot; print for you?</div><div><br></=
div><div>BTW, if the only problem is that the cal data path is misattribute=
d, then you can set the environment variable UHD_CAL_DATA_PATH=3D~/.local/u=
hd/shrae/uhd/cal. That should do the trick. However, I would still like to =
figure out what caused this.</div><div><br></div><div>--M</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr =
14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.v=
ancauwenbergh13@gmail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr">Hello Martin,<div><br></div><div>only installed via apt, I=
 did not specify snap.</div><div>uhd.get_lib_path() returns: /lib/x86_64-li=
nux-gnu -&gt; libuhd.so found here</div><div>uhd.get_pkg_path() returns: /l=
ib</div><div>I am unable to use uhd.get_pkg_data_path() and uhd.get_module_=
paths() -&gt; uhd has no attribute</div><div><br></div><div>Tim</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op do =
10 apr 2025 om 17:14 schreef Martin Braun &lt;<a href=3D"mailto:martin.brau=
n@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>That w=
as very helpful. So there&#39;s a discrepancy between what the cal-tool thi=
nks the path is (~/.local/...) and what UHD thinks it is (~/snap/code/188/.=
local).</div><div><br></div><div>I&#39;m also a bit surprised about that UH=
D path. Did you install UHD via snap? (If yes, I didn&#39;t even know that =
was possible!). I know you say you installed via apt, but I&#39;m just baff=
led why UHD thinks this is the right path.</div><div><br></div><div>There a=
re other path APIs, here is what they look like on a system where I install=
 UHD, manually, into a random location:</div><div><br></div><div>&gt;&gt;&g=
t; uhd.get_lib_path()<br>&#39;/home/mbr0wn/prefix/master/lib&#39;<br>&gt;&g=
t;&gt; uhd.get_pkg_data_path()<br>&#39;/home/mbr0wn/prefix/master/share/uhd=
&#39;<br>&gt;&gt;&gt; uhd.get_cal_data_path()<br>&#39;/home/mbr0wn/.local/s=
hare/uhd/cal&#39;</div><div><br></div><div><br></div><div>The first (get_li=
b_path()) is the path where the libuhd.so file is located. Is that the case=
 for you?</div><div><br></div><div>You can see even there, the cal files ar=
e, by default, searched for in ~/.local/share/uhd/cal.</div><div><br></div>=
<div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh=
 &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_blank">ti=
m.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Martin,<div><br></div><d=
iv>it prints the following: home/username/snap/code/188/.local/share/uhd/ca=
l</div><div>That folder does not exist, the deepest path I can go is home/u=
sername/snap/code/188/.local/share/</div><div>I manually created the folder=
s uhd/cal and pasted the calibration files there. Now the function=C2=A0usr=
p.has_rx_power_reference() returns True. I&#39;ll investigate further.</div=
><div><br></div><div>Tim</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Op wo 9 apr 2025 om 09:02 schreef Martin Brau=
n &lt;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.br=
aun@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>Tim,</div><div><br></div><div>sorry for sugges=
ting this so late: What does this Python script print:</div><div><br></div>=
<div>import uhd</div><div>print(uhd.get_cal_data_path())</div><div><br></di=
v><div><br></div><div>?</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim V=
ancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=
=3D"_blank">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Martin,<di=
v><br></div><div>thanks for your reply. It would be helpful to know where t=
he driver looks for the file, but until now I did not find any variable or =
function to obtain this location.</div><div><br></div><div>FYI, I am using =
a virtual environment on Ubuntu 24.0.2 LTS with Python 3.12.3.</div><div>Th=
e following packages related to uhd are installed via apt:</div><div><br></=
div><div><table><thead><tr><th><strong>Status</strong></th><th><strong>Pack=
age Name</strong></th><th><strong>Version</strong></th><th><strong>Architec=
ture</strong></th><th><strong>Description</strong></th></tr></thead><tbody>=
<tr><td><code>ii</code></td><td><code>libgnuradio-uhd3.10.9t64:amd64</code>=
</td><td>3.10.9.2-1.1ubuntu2</td><td>amd64</td><td>gnuradio universal hardw=
are driver functions</td></tr><tr><td><code>ii</code></td><td><code>libuhd4=
.6.0t64:amd64</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</=
td><td>universal hardware driver for Ettus Research products - library</td>=
</tr><tr><td><code>ii</code></td><td><code>python3-uhd</code></td><td>4.6.0=
.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware driver f=
or Ettus Research products - Python3</td></tr><tr><td><code>ii</code></td><=
td><code>soapysdr0.8-module-uhd:amd64</code></td><td>0.4.1-4build4</td><td>=
amd64</td><td>UHD device support for SoapySDR</td></tr><tr><td><code>ii</co=
de></td><td><code>uhd-doc</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td=
><td>all</td><td>universal hardware driver for Ettus Research products - do=
c</td></tr><tr><td><code>ii</code></td><td><code>uhd-host</code></td><td>4.=
6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware drive=
r for Ettus Research products - host apps</td></tr></tbody></table><br></di=
v><div>Best regards,</div><div><br></div><div>Tim</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op di 8 apr 2025 om =
10:14 schreef Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" ta=
rget=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Tim,</div><div><br><=
/div><div>at first glance, you&#39;re doing everything right. Thanks for ta=
king the time and reading the docs. We&#39;ll need to look into this.</div>=
<div><br></div><div>I saw you also opened <a href=3D"https://github.com/Ett=
usResearch/uhd/issues/842" target=3D"_blank">https://github.com/EttusResear=
ch/uhd/issues/842</a>, that&#39;s very helpful. Sorry I can&#39;t give you =
the right answer immediately!</div><div><br></div><div>--M</div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr=
 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.v=
ancauwenbergh13@gmail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div style=3D"box-sizing:border-box;margin-left:0px;margin=
-right:0px;margin-top:10px;color:rgb(51,51,51);font-family:Helvetica,Arial,=
sans-serif;font-size:16px"><div style=3D"box-sizing:border-box;min-height:1=
px;padding-left:0px;padding-right:0px;float:left;width:1442px"><div style=
=3D"box-sizing:border-box"><div id=3D"m_-7650364259361545134m_-709192516745=
3697559m_-3095287405320035139m_-7160437921547283226m_-909707477585944065m_5=
671169136996207871m_4170279445011706748m_3453399925031800041m_-446173618698=
088206gmail-bodyDisplay" style=3D"box-sizing:border-box;word-break:break-wo=
rd;line-height:1.71429;overflow:auto;margin-bottom:10px"><div style=3D"box-=
sizing:border-box;word-break:break-word;line-height:1.32;margin-bottom:10px=
"><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42=
">Hello</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-he=
ight:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;padding:0=
px;line-height:1.42">I&#39;ve recently run the uhd_power_cal.py script to c=
alibrate the RX paths of a B200mini using a calibrated signal generator.</p=
><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42"=
>It generated two files, saved at /home/username/.local/share/uhd/cal:</p><=
p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42">=
=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-hei=
ght:1.42">- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal</p><p style=3D"box-sizing:bor=
der-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr_rx_tx+rx_33=
ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;lin=
e-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;margin:0px;paddi=
ng:0px;line-height:1.42">Using python, I have the following code:</p><pre s=
tyle=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,Consol=
as,&quot;Courier New&quot;,monospace;font-size:15px;padding:13px;margin-top=
:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62);word-brea=
k:break-all;background-color:rgb(245,245,245);border:1px solid rgb(204,204,=
204);border-radius:0px">print(f&quot;RX info: {usrp.get_usrp_rx_info()}&quo=
t;)</pre><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-heig=
ht:1.42">This returns the following:</p><pre style=3D"box-sizing:border-box=
;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,mo=
nospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;lin=
e-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-color:=
rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">RX in=
fo: {&#39;mboard_id&#39;: &#39;B200mini&#39;, &#39;mboard_name&#39;: &#39;B=
200mini&#39;, &#39;mboard_serial&#39;: &#39;33ECA1A&#39;, &#39;module_seria=
l&#39;: &#39;33ECA1A&#39;, &#39;rx_antenna&#39;: &#39;TX/RX&#39;, &#39;rx_i=
d&#39;: &#39;Unknown (0xffff)&#39;, &#39;rx_ref_power_key&#39;: &#39;b2xxmi=
ni_pwr_rx_tx+rx&#39;, &#39;rx_ref_power_serial&#39;: &#39;33ECA1A#A&#39;, &=
#39;rx_serial&#39;: &#39;&#39;, &#39;rx_subdev_name&#39;: &#39;FE-RX1&#39;,=
 &#39;rx_subdev_spec&#39;: &#39;A:A&#39;}</pre><p style=3D"box-sizing:borde=
r-box;margin:0px;padding:0px;line-height:1.42">Running the following functi=
ons return false however.</p><pre style=3D"box-sizing:border-box;overflow:a=
uto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;fon=
t-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;line-height:1.=
71429;color:rgb(62,62,62);word-break:break-all;background-color:rgb(245,245=
,245);border:1px solid rgb(204,204,204);border-radius:0px">usrp.has_rx_powe=
r_reference()<br style=3D"box-sizing:border-box">uhd.usrp.cal.database.has_=
cal_data(&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;33ECA1A#A&#39;):</pre><div s=
tyle=3D"box-sizing:border-box"><div style=3D"box-sizing:border-box">Why? <b=
>How can I use the calibration file in python to obtain estimated received =
power level at the RX side in dBm?</b> This is not clear in the documentati=
on. I would like to do this for the TX side as well.</div><div style=3D"box=
-sizing:border-box">=C2=A0</div><div style=3D"box-sizing:border-box">Thanks=
!</div><div style=3D"box-sizing:border-box">=C2=A0</div><div style=3D"box-s=
izing:border-box">References:</div><div style=3D"box-sizing:border-box"><a =
href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html=
#a1dadf323c5f00ac4f93b231adc13e34c" rel=3D"nofollow noopener noreferrer" st=
yle=3D"box-sizing:border-box;background-color:transparent;color:rgb(4,65,35=
)" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1mul=
ti__usrp.html#a1dadf323c5f00ac4f93b231adc13e34...</a></div><div style=3D"bo=
x-sizing:border-box"><a href=3D"https://files.ettus.com/manual/classuhd_1_1=
usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afbfb7d9" rel=3D"nofo=
llow noopener noreferrer" style=3D"box-sizing:border-box;background-color:t=
ransparent;color:rgb(4,65,35)" target=3D"_blank">https://files.ettus.com/ma=
nual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc10f29cb616afb.=
..</a></div><div style=3D"box-sizing:border-box"><a href=3D"https://files.e=
ttus.com/manual/page_power.html" rel=3D"nofollow noopener noreferrer" style=
=3D"box-sizing:border-box;background-color:transparent;color:rgb(4,65,35)" =
target=3D"_blank">https://files.ettus.com/manual/page_power.html</a></div><=
/div></div></div></div></div></div></div>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000d7a8090632bc50a5--

--===============3014835273922846025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3014835273922846025==--
