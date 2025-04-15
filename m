Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A52A89D2E
	for <lists+usrp-users@lfdr.de>; Tue, 15 Apr 2025 14:10:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C84D03861FB
	for <lists+usrp-users@lfdr.de>; Tue, 15 Apr 2025 08:10:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744719041; bh=9JjM6e/yjgrH+BUKoz9bXoQ551awykb7jigN6EFuF98=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=pVk4ELCS08++zeXFoZkVYTpHcWS6qveeadnolEsziB5euJzq+fQyjy6+wO7RZSfNc
	 Em9QZqOpOyMk/RYMaVY2g1tgevy8+GdhMLcejQaCG42hiolINwqkUYbQpz3utZNO0t
	 N7MN0I31erCU2onnuHcV9kwHSGsPyGy0u+z+eayVW6BZ/ZJqtJ2GOA7xoJ1gbUPdAr
	 fkcEXipYMfdmvzCtog1qt0zDMsSirwbQE5doROBnpZczTUkCuwhQjxiqMQaIyL8lYJ
	 mLPKPCkffxAxQByN8y6cTGZ4ieYGrBtMojIHolPMwufGSZO0ldNzGzYV9xnbs4Q38z
	 lYDiP6nd4DENw==
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 79A48385952
	for <usrp-users@lists.ettus.com>; Tue, 15 Apr 2025 08:10:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mIvM/5k9";
	dkim-atps=neutral
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6eeb7589db4so62398746d6.1
        for <usrp-users@lists.ettus.com>; Tue, 15 Apr 2025 05:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744719008; x=1745323808; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d79ENGwU8K7x67jasc6Sh7u4MJX+0jCiT1dkaEpjKFo=;
        b=mIvM/5k9hnzehezFIUpiEGmxIBB0VMMaogf9MT2eSfiQRwVenoLqDylSX6TJQT4raF
         uRMNKksP5Grz8LDsXKHGVujLkZubuFpfnw9JGS/4hn0THpYQzvRECh9/+8f9cwYOofxs
         ZZHBzifBdtaw0IdgSy5VYl4W1D9pwQqkQlefE+Mf4efM6CwsCOrgiX2lUGSLqNDkT/2A
         VzH0rsKMyPefLLZNhT/x/R+qvzE7YwUX7Ly/FbzCDF0xnX/D5UeDps42uyk6JPLazl0O
         2pMAEW3c/YluAeCEIm85RwedFxQcZq/1n2VWXirdZOoZf15fnw0+uOL+ZKLruplWuBtQ
         TM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744719008; x=1745323808;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d79ENGwU8K7x67jasc6Sh7u4MJX+0jCiT1dkaEpjKFo=;
        b=NlOIM/qkUBiIodmBE3dQoPodeKeHpVe8osPmHHodHQ/TIqV3OG6nPe2azpb6f6iRIc
         A1wQKEtE6Nm7eN2AhT9aT6fyHnOFWA9cH4pFjW26U91B1WIus323ceOanZt2UGBpuBkv
         EEAWqO3++G0oSYZCd8uTV/A4bpWH8nMzSi3A3y8SmgPTQiYEg2AUjWUsV8+SMjkvhsEI
         43PvMDwnTO9ZSIp2RF1BjyWiIpi43mk9rv7c4NY2tf0SShqyLPlgEPgNskl6eCKaPLIE
         XT4i0sbWibNOxdmspuAJ0xQM4zfQXqiog9BTjFm/CIJ7+uWgV/pkAz9Ce8DLtS3lCd5s
         DC2g==
X-Gm-Message-State: AOJu0YyakAsYjek1FAaphCQEMqOLR5v3iKgyou2e7GIGZP2nIBX1F8wE
	JaKeoiX/Dh8m02KFW3ZXapzIp3yUoRf2GzQoGnit2AOYOXUwRCalbOzHAYBYhiqWbcsrJsvGZFm
	JaeAoz+2Hk3oH3ygdLYq9Cc6k0+Vmjw==
X-Gm-Gg: ASbGncvgiRfvstx0AT9ez4N0HHvpwXT9RTivoH4Rv5HTUCU4+RED3qMYmkPwNcLDchm
	9pbplo2tWZXwSrA7bN+i2n245lq5jjS4VxXX3DklxRUe8XITR1eUDRW3uGEUOY75Sm23UjOfdG0
	aYO8rBQDcn8xlGCvNsb2VN
X-Google-Smtp-Source: AGHT+IF6JidaQLGgJqkifJF2+WtMPQQVsXz26uUxwywzUub6OLNFIbzkv2dILUWhg+wH+aYqXAS5z2AIQF2Qyh9cG2k=
X-Received: by 2002:a05:6214:e8c:b0:6ee:ba58:e099 with SMTP id
 6a1803df08f44-6f230d382d4mr202149726d6.15.1744719007789; Tue, 15 Apr 2025
 05:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
 <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
 <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
 <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
 <CAFOi1A4c2-O_dmW=+YDt69JPnsRREX8nev+WT4-k3KuvP2VyiQ@mail.gmail.com>
 <CAAc7u9oyL7Vh97-d0BBrcXA2VS0syFsygJ6h89axf7KJsdCKFw@mail.gmail.com>
 <CAFOi1A68Q32BFxgRehHcGKZYPpAo5Ht9bPRtqiJvyqWr-Bc7iA@mail.gmail.com>
 <CAAc7u9q6q1fEhY_f9mprdRm8ofMT=mBN66L_HZ5=D2KAbdV1Tw@mail.gmail.com> <CAFOi1A4oDXk8JZb9+WTaeQr0+o3gxnaCv0TH=UuG84obW3xeGA@mail.gmail.com>
In-Reply-To: <CAFOi1A4oDXk8JZb9+WTaeQr0+o3gxnaCv0TH=UuG84obW3xeGA@mail.gmail.com>
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Tue, 15 Apr 2025 14:09:56 +0200
X-Gm-Features: ATxdqUEGRBes1ZqoXQ5jeyt-_BAq-M9-54K4eeILYliAPAaHD3yD5cAeyHkQAFo
Message-ID: <CAAc7u9pojEEiM9uiJ8Cw0Xrg77OB-PAEGsHadDHNnZ2ZmcAYHw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: XVFOVCFRJ3D3B7BET7MOYDPE7ZAPP4RK
X-Message-ID-Hash: XVFOVCFRJ3D3B7BET7MOYDPE7ZAPP4RK
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XVFOVCFRJ3D3B7BET7MOYDPE7ZAPP4RK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5981069227891504170=="

--===============5981069227891504170==
Content-Type: multipart/alternative; boundary="000000000000b139990632d00c0a"

--000000000000b139990632d00c0a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

I do other software development on that system too, and indeed I installed
VS code from the snap store. It could be that a different installation
defined the XDG_DATA_HOME between running the calibration and trying to use
the files.
Anyhow, the file is being used so I consider this solved. Thank you for the
support!

Tim

Op ma 14 apr 2025 om 14:38 schreef Martin Braun <martin.braun@ettus.com>:

> Hi Tim and others affected by this,
>
> I think that narrows down. And I'm afraid UHD is not at fault here, or
> rather, it has no way of knowing any better, at least I'm pretty confiden=
t
> that is the case.
>
> UHD is designed to follow the freedeskop specifications:
> https://specifications.freedesktop.org/basedir-spec/latest/
>
> ...that means if you specify XDG_DATA_HOME, then UHD will use that value.
> Not all data that UHD stores or loads is subject to this path, but the
> calibration data are. So UHD is looking for the data in the "right spot",
> and if you need a different path, you have to specify UHD_CAL_DATA_PATH
> (see earlier message).
>
> There's still two mysteries here:
>
> 1. Why did usrp_calibrator store the data in `/.local`?
>
> My hypothesis is that it was run in a context where XDG_DATA_HOME was not
> set. The code to store and retrieve cal data is the same between
> usrp_calibrator and normal UHD operations. That's how we make sure the
> paths aren't the same.
>
> 2. Why is XDG_DATA_HOME set in your case?
>
> Maybe VS Code is installed from snap, and populates that variable? This i=
s
> ultimately a question for you, I'm afraid.
>
> --M
>
> On Mon, Apr 14, 2025 at 12:58=E2=80=AFPM Tim Vancauwenbergh <
> tim.vancauwenbergh13@gmail.com> wrote:
>
>> Hi Martin,
>>
>> running echo $XDG_DATA_HOME in the virtual environment gives:
>> /home/username/snap/code/188/.local/share
>> I am using Visual Studio Code, if it might help.
>>
>> Tim
>>
>> Op ma 14 apr 2025 om 11:51 schreef Martin Braun <martin.braun@ettus.com>=
:
>>
>>> Ah, those are more recent than UHD 4.6.
>>>
>>> Is the environment variable XDG_DATA_HOME set on your system? What does
>>> "echo $XDG_DATA_HOME" print for you?
>>>
>>> BTW, if the only problem is that the cal data path is misattributed,
>>> then you can set the environment variable
>>> UHD_CAL_DATA_PATH=3D~/.local/uhd/shrae/uhd/cal. That should do the tric=
k.
>>> However, I would still like to figure out what caused this.
>>>
>>> --M
>>>
>>> On Mon, Apr 14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh <
>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>
>>>> Hello Martin,
>>>>
>>>> only installed via apt, I did not specify snap.
>>>> uhd.get_lib_path() returns: /lib/x86_64-linux-gnu -> libuhd.so found
>>>> here
>>>> uhd.get_pkg_path() returns: /lib
>>>> I am unable to use uhd.get_pkg_data_path() and uhd.get_module_paths()
>>>> -> uhd has no attribute
>>>>
>>>> Tim
>>>>
>>>> Op do 10 apr 2025 om 17:14 schreef Martin Braun <martin.braun@ettus.co=
m
>>>> >:
>>>>
>>>>> That was very helpful. So there's a discrepancy between what the
>>>>> cal-tool thinks the path is (~/.local/...) and what UHD thinks it is
>>>>> (~/snap/code/188/.local).
>>>>>
>>>>> I'm also a bit surprised about that UHD path. Did you install UHD via
>>>>> snap? (If yes, I didn't even know that was possible!). I know you say=
 you
>>>>> installed via apt, but I'm just baffled why UHD thinks this is the ri=
ght
>>>>> path.
>>>>>
>>>>> There are other path APIs, here is what they look like on a system
>>>>> where I install UHD, manually, into a random location:
>>>>>
>>>>> >>> uhd.get_lib_path()
>>>>> '/home/mbr0wn/prefix/master/lib'
>>>>> >>> uhd.get_pkg_data_path()
>>>>> '/home/mbr0wn/prefix/master/share/uhd'
>>>>> >>> uhd.get_cal_data_path()
>>>>> '/home/mbr0wn/.local/share/uhd/cal'
>>>>>
>>>>>
>>>>> The first (get_lib_path()) is the path where the libuhd.so file is
>>>>> located. Is that the case for you?
>>>>>
>>>>> You can see even there, the cal files are, by default, searched for i=
n
>>>>> ~/.local/share/uhd/cal.
>>>>>
>>>>> --M
>>>>>
>>>>> On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh <
>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>
>>>>>> Hello Martin,
>>>>>>
>>>>>> it prints the following:
>>>>>> home/username/snap/code/188/.local/share/uhd/cal
>>>>>> That folder does not exist, the deepest path I can go is
>>>>>> home/username/snap/code/188/.local/share/
>>>>>> I manually created the folders uhd/cal and pasted the calibration
>>>>>> files there. Now the function usrp.has_rx_power_reference() returns =
True.
>>>>>> I'll investigate further.
>>>>>>
>>>>>> Tim
>>>>>>
>>>>>> Op wo 9 apr 2025 om 09:02 schreef Martin Braun <
>>>>>> martin.braun@ettus.com>:
>>>>>>
>>>>>>> Tim,
>>>>>>>
>>>>>>> sorry for suggesting this so late: What does this Python script
>>>>>>> print:
>>>>>>>
>>>>>>> import uhd
>>>>>>> print(uhd.get_cal_data_path())
>>>>>>>
>>>>>>>
>>>>>>> ?
>>>>>>>
>>>>>>> On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
>>>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>>>
>>>>>>>> Hello Martin,
>>>>>>>>
>>>>>>>> thanks for your reply. It would be helpful to know where the drive=
r
>>>>>>>> looks for the file, but until now I did not find any variable or f=
unction
>>>>>>>> to obtain this location.
>>>>>>>>
>>>>>>>> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with
>>>>>>>> Python 3.12.3.
>>>>>>>> The following packages related to uhd are installed via apt:
>>>>>>>>
>>>>>>>> *Status**Package Name**Version**Architecture**Description*
>>>>>>>> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnurad=
io
>>>>>>>> universal hardware driver functions
>>>>>>>> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 unive=
rsal
>>>>>>>> hardware driver for Ettus Research products - library
>>>>>>>> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>>>>>>>> hardware driver for Ettus Research products - Python3
>>>>>>>> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device
>>>>>>>> support for SoapySDR
>>>>>>>> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware
>>>>>>>> driver for Ettus Research products - doc
>>>>>>>> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>>>>>>>> hardware driver for Ettus Research products - host apps
>>>>>>>> Best regards,
>>>>>>>>
>>>>>>>> Tim
>>>>>>>>
>>>>>>>> Op di 8 apr 2025 om 10:14 schreef Martin Braun <
>>>>>>>> martin.braun@ettus.com>:
>>>>>>>>
>>>>>>>>> Tim,
>>>>>>>>>
>>>>>>>>> at first glance, you're doing everything right. Thanks for taking
>>>>>>>>> the time and reading the docs. We'll need to look into this.
>>>>>>>>>
>>>>>>>>> I saw you also opened
>>>>>>>>> https://github.com/EttusResearch/uhd/issues/842, that's very
>>>>>>>>> helpful. Sorry I can't give you the right answer immediately!
>>>>>>>>>
>>>>>>>>> --M
>>>>>>>>>
>>>>>>>>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>>>>>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>>>>>
>>>>>>>>>> Hello
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> I've recently run the uhd_power_cal.py script to calibrate the R=
X
>>>>>>>>>> paths of a B200mini using a calibrated signal generator.
>>>>>>>>>>
>>>>>>>>>> It generated two files, saved at
>>>>>>>>>> /home/username/.local/share/uhd/cal:
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>>>>>>>>
>>>>>>>>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Using python, I have the following code:
>>>>>>>>>>
>>>>>>>>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>>>>>>>>
>>>>>>>>>> This returns the following:
>>>>>>>>>>
>>>>>>>>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'm=
board_serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX'=
, 'rx_id': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx',=
 'rx_ref_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE=
-RX1', 'rx_subdev_spec': 'A:A'}
>>>>>>>>>>
>>>>>>>>>> Running the following functions return false however.
>>>>>>>>>>
>>>>>>>>>> usrp.has_rx_power_reference()
>>>>>>>>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33E=
CA1A#A'):
>>>>>>>>>>
>>>>>>>>>> Why? *How can I use the calibration file in python to obtain
>>>>>>>>>> estimated received power level at the RX side in dBm?* This is
>>>>>>>>>> not clear in the documentation. I would like to do this for the =
TX side as
>>>>>>>>>> well.
>>>>>>>>>>
>>>>>>>>>> Thanks!
>>>>>>>>>>
>>>>>>>>>> References:
>>>>>>>>>>
>>>>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.h=
tml#a1dadf323c5f00ac4f93b231adc13e34...
>>>>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.=
html#a1dadf323c5f00ac4f93b231adc13e34c>
>>>>>>>>>>
>>>>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1databa=
se.html#a5605b43f778efc10f29cb616afb...
>>>>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1datab=
ase.html#a5605b43f778efc10f29cb616afbfb7d9>
>>>>>>>>>> https://files.ettus.com/manual/page_power.html
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>
>>>>>>>>> _______________________________________________
>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>
>>>>>>>> _______________________________________________
>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b139990632d00c0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>I do other software developm=
ent on that system too, and indeed I installed VS code from the snap store.=
 It could be that a different installation defined the XDG_DATA_HOME betwee=
n running the calibration and trying to use the files.</div><div>Anyhow, th=
e file is being used so I consider this solved. Thank you for the support!<=
/div><div><br></div><div>Tim</div></div><br><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Op ma 14 apr 2025 o=
m 14:38 schreef Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">=
martin.braun@ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div dir=3D"ltr"><div>Hi Tim and others affected by this,</=
div><div><br></div><div>I think that narrows down. And I&#39;m afraid UHD i=
s not at fault here, or rather, it has no way of knowing any better, at lea=
st I&#39;m pretty confident that is the case.</div><div><br></div><div>UHD =
is designed to follow the freedeskop specifications:</div><div><a href=3D"h=
ttps://specifications.freedesktop.org/basedir-spec/latest/" target=3D"_blan=
k">https://specifications.freedesktop.org/basedir-spec/latest/</a></div><di=
v><br></div><div>...that means if you specify XDG_DATA_HOME, then UHD will =
use that value. Not all data that UHD stores or loads is subject to this pa=
th, but the calibration data are. So UHD is looking for the data in the &qu=
ot;right spot&quot;, and if you need a different path, you have to specify =
UHD_CAL_DATA_PATH (see earlier message).</div><div><br></div><div>There&#39=
;s still two mysteries here:</div><div><br></div><div>1. Why did usrp_calib=
rator store the data in `/.local`?</div><div><br></div><div>My hypothesis i=
s that it was run in a context where XDG_DATA_HOME was not set. The code to=
 store and retrieve cal data is the same between usrp_calibrator and normal=
 UHD operations. That&#39;s how we make sure the paths aren&#39;t the same.=
</div><div><br></div><div>2. Why is XDG_DATA_HOME set in your case?</div><d=
iv><br></div><div>Maybe VS Code is installed from snap, and populates that =
variable? This is ultimately a question for you, I&#39;m afraid.</div><div>=
<br></div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Apr 14, 2025 at 12:58=E2=80=AFPM Tim Vancau=
wenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_b=
lank">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Martin,<div><br></d=
iv><div>running echo $XDG_DATA_HOME in the virtual environment gives: /home=
/username/snap/code/188/.local/share</div><div>I am using Visual Studio Cod=
e, if it might help.</div><div><br></div><div>Tim</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op ma 14 apr 2025 om=
 11:51 schreef Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com" t=
arget=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Ah, those are more r=
ecent than UHD 4.6.</div><div><br></div><div>Is the environment variable XD=
G_DATA_HOME set on your system? What does &quot;echo $XDG_DATA_HOME&quot; p=
rint for you?</div><div><br></div><div>BTW, if the only problem is that the=
 cal data path is misattributed, then you can set the environment variable =
UHD_CAL_DATA_PATH=3D~/.local/uhd/shrae/uhd/cal. That should do the trick. H=
owever, I would still like to figure out what caused this.</div><div><br></=
div><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Apr 14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenber=
gh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_blank">=
tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Martin,<div><br></div>=
<div>only installed via apt, I did not specify snap.</div><div>uhd.get_lib_=
path() returns: /lib/x86_64-linux-gnu -&gt; libuhd.so found here</div><div>=
uhd.get_pkg_path() returns: /lib</div><div>I am unable to use uhd.get_pkg_d=
ata_path() and uhd.get_module_paths() -&gt; uhd has no attribute</div><div>=
<br></div><div>Tim</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">Op do 10 apr 2025 om 17:14 schreef Martin Braun &lt=
;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@e=
ttus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>That was very helpful. So there&#39;s a discrepancy=
 between what the cal-tool thinks the path is (~/.local/...) and what UHD t=
hinks it is (~/snap/code/188/.local).</div><div><br></div><div>I&#39;m also=
 a bit surprised about that UHD path. Did you install UHD via snap? (If yes=
, I didn&#39;t even know that was possible!). I know you say you installed =
via apt, but I&#39;m just baffled why UHD thinks this is the right path.</d=
iv><div><br></div><div>There are other path APIs, here is what they look li=
ke on a system where I install UHD, manually, into a random location:</div>=
<div><br></div><div>&gt;&gt;&gt; uhd.get_lib_path()<br>&#39;/home/mbr0wn/pr=
efix/master/lib&#39;<br>&gt;&gt;&gt; uhd.get_pkg_data_path()<br>&#39;/home/=
mbr0wn/prefix/master/share/uhd&#39;<br>&gt;&gt;&gt; uhd.get_cal_data_path()=
<br>&#39;/home/mbr0wn/.local/share/uhd/cal&#39;</div><div><br></div><div><b=
r></div><div>The first (get_lib_path()) is the path where the libuhd.so fil=
e is located. Is that the case for you?</div><div><br></div><div>You can se=
e even there, the cal files are, by default, searched for in ~/.local/share=
/uhd/cal.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 10, 2025 at 10:13=
=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@g=
mail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<b=
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
;width:1442px"><div style=3D"box-sizing:border-box"><div id=3D"m_-285440685=
0585091736m_-7650364259361545134m_-7091925167453697559m_-309528740532003513=
9m_-7160437921547283226m_-909707477585944065m_5671169136996207871m_41702794=
45011706748m_3453399925031800041m_-446173618698088206gmail-bodyDisplay" sty=
le=3D"box-sizing:border-box;word-break:break-word;line-height:1.71429;overf=
low:auto;margin-bottom:10px"><div style=3D"box-sizing:border-box;word-break=
:break-word;line-height:1.32;margin-bottom:10px"><p style=3D"box-sizing:bor=
der-box;margin:0px;padding:0px;line-height:1.42">Hello</p><p style=3D"box-s=
izing:border-box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p styl=
e=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42">I&#39;v=
e recently run the uhd_power_cal.py script to calibrate the RX paths of a B=
200mini using a calibrated signal generator.</p><p style=3D"box-sizing:bord=
er-box;margin:0px;padding:0px;line-height:1.42">It generated two files, sav=
ed at /home/username/.local/share/uhd/cal:</p><p style=3D"box-sizing:border=
-box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-siz=
ing:border-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr_rx_r=
x2_33ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;padding:0p=
x;line-height:1.42">- b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal</p><p style=3D"bo=
x-sizing:border-box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p s=
tyle=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42">Usin=
g python, I have the following code:</p><pre style=3D"box-sizing:border-box=
;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,mo=
nospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;lin=
e-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-color:=
rgb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">print=
(f&quot;RX info: {usrp.get_usrp_rx_info()}&quot;)</pre><p style=3D"box-sizi=
ng:border-box;margin:0px;padding:0px;line-height:1.42">This returns the fol=
lowing:</p><pre style=3D"box-sizing:border-box;overflow:auto;font-family:Me=
nlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:15px;paddin=
g:13px;margin-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62=
,62,62);word-break:break-all;background-color:rgb(245,245,245);border:1px s=
olid rgb(204,204,204);border-radius:0px">RX info: {&#39;mboard_id&#39;: &#3=
9;B200mini&#39;, &#39;mboard_name&#39;: &#39;B200mini&#39;, &#39;mboard_ser=
ial&#39;: &#39;33ECA1A&#39;, &#39;module_serial&#39;: &#39;33ECA1A&#39;, &#=
39;rx_antenna&#39;: &#39;TX/RX&#39;, &#39;rx_id&#39;: &#39;Unknown (0xffff)=
&#39;, &#39;rx_ref_power_key&#39;: &#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;rx=
_ref_power_serial&#39;: &#39;33ECA1A#A&#39;, &#39;rx_serial&#39;: &#39;&#39=
;, &#39;rx_subdev_name&#39;: &#39;FE-RX1&#39;, &#39;rx_subdev_spec&#39;: &#=
39;A:A&#39;}</pre><p style=3D"box-sizing:border-box;margin:0px;padding:0px;=
line-height:1.42">Running the following functions return false however.</p>=
<pre style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,=
Consolas,&quot;Courier New&quot;,monospace;font-size:15px;padding:13px;marg=
in-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62);wor=
d-break:break-all;background-color:rgb(245,245,245);border:1px solid rgb(20=
4,204,204);border-radius:0px">usrp.has_rx_power_reference()<br style=3D"box=
-sizing:border-box">uhd.usrp.cal.database.has_cal_data(&#39;b2xxmini_pwr_rx=
_tx+rx&#39;, &#39;33ECA1A#A&#39;):</pre><div style=3D"box-sizing:border-box=
"><div style=3D"box-sizing:border-box">Why? <b>How can I use the calibratio=
n file in python to obtain estimated received power level at the RX side in=
 dBm?</b> This is not clear in the documentation. I would like to do this f=
or the TX side as well.</div><div style=3D"box-sizing:border-box">=C2=A0</d=
iv><div style=3D"box-sizing:border-box">Thanks!</div><div style=3D"box-sizi=
ng:border-box">=C2=A0</div><div style=3D"box-sizing:border-box">References:=
</div><div style=3D"box-sizing:border-box"><a href=3D"https://files.ettus.c=
om/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc1=
3e34c" rel=3D"nofollow noopener noreferrer" style=3D"box-sizing:border-box;=
background-color:transparent;color:rgb(4,65,35)" target=3D"_blank">https://=
files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00a=
c4f93b231adc13e34...</a></div><div style=3D"box-sizing:border-box"><a href=
=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html=
#a5605b43f778efc10f29cb616afbfb7d9" rel=3D"nofollow noopener noreferrer" st=
yle=3D"box-sizing:border-box;background-color:transparent;color:rgb(4,65,35=
)" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal=
_1_1database.html#a5605b43f778efc10f29cb616afb...</a></div><div style=3D"bo=
x-sizing:border-box"><a href=3D"https://files.ettus.com/manual/page_power.h=
tml" rel=3D"nofollow noopener noreferrer" style=3D"box-sizing:border-box;ba=
ckground-color:transparent;color:rgb(4,65,35)" target=3D"_blank">https://fi=
les.ettus.com/manual/page_power.html</a></div></div></div></div></div></div=
></div></div>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b139990632d00c0a--

--===============5981069227891504170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5981069227891504170==--
