Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B07A87E46
	for <lists+usrp-users@lfdr.de>; Mon, 14 Apr 2025 12:59:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA6AA385CD9
	for <lists+usrp-users@lfdr.de>; Mon, 14 Apr 2025 06:59:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744628360; bh=RaHiz0dGhuwWeoYForMDKWW/owYhWzU5Y0zDs0GuHtc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oRAGTLhcYTjGXhFL8+y2lnGomqXLt+I3AqOV67bJ4AUDkBpzod9StpvjVhRMsAFAG
	 NciyuFHpMUv5nJsDCFkJbPw9faQkAH/maaj8Xe+UBrJQ8SN+V/kj+VZW5iZZGcuvNB
	 wq0ArgTe4MAvbTD8gKxZepwBk8imZsTttcd2RNGHe7KWpDSAI5W+yJKgmZBDHCsqZp
	 L2so/02gSMXc8R/SeNBypt/seNzU07cxnwbp9YyhA1E7RQ5FG83xz81ITKr2Ux7+iw
	 XQBpOX7Bc0cQB3mzicy4BIkQ7YNE7vVL9lOgEfgY21d06TQcnDZYNJ6AL7kQKBQYpr
	 Yn33lwhSaB2iw==
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C7BC385B21
	for <usrp-users@lists.ettus.com>; Mon, 14 Apr 2025 06:58:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VUREYqu2";
	dkim-atps=neutral
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-476977848c4so39872661cf.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Apr 2025 03:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744628326; x=1745233126; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HNd4V3JMeF8mpyH9ai7gK0TTrlrFmxQtwnanIvsdIM8=;
        b=VUREYqu2TkWZD9b2QChuQF9o8YKNQ4nbmL5JLLDIYpUN/XbJq1NLiUcfGG1UbQyJyR
         Ggi9jw9vboy3I+v/9nRF0xP0bjCYb+P/UnqkOB/wcHRtRPuz1hOl7eHU/rO8Azs2h1i7
         7fwruPgm8H+2wKQ4K9rGt7aZI/1q7wLOKGnD/fObwzob71SkCBYKfbV3IEkB60dUewBF
         8wd9jpBm8cLN30SBxusRrM7hPn3CChHmNnoWXSqW8r8/0dFrkfOdqMXtH/jYGXTPRscl
         0XN0Vg6u3e8zgu0lbHzQN7PTk0xnmbu7TRu0iYKgd1YnAKXXDkHkOfrlcdrj2cR1Vkit
         wlqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744628326; x=1745233126;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HNd4V3JMeF8mpyH9ai7gK0TTrlrFmxQtwnanIvsdIM8=;
        b=CRLAvgZieuL1uob9EUMxq6469SDarYbWOriW93AwrOQysr/AzgppJVuFaswTMrvkOe
         OeJrKoIzP+xYeZUhgp0nnRNfnie2x6YUKWKN4wC+kgWnWqVXPah68MU9J3uKEAhJnrXE
         7Gl3N0KFHH+y18+iMkanij47LB18e5qKZHrm+nAZvLReE8aMv8CNoAE09aR+nNDb+Oo7
         Gfqtw+7sItitzCC6zXsZvBwT/SNXEfEfSjz9vGZYEJXdcZm6K4DBTlmDj0GVfKvh2M/w
         RdNXXuxC0vz0FRAwJFeiVzzOfnjYSe+bsE5GDxrwMDzQP3mJr8jeZRVkxsr618HqEwq0
         PFOw==
X-Gm-Message-State: AOJu0YzbS3XS+6lmoKsVOFZ+9Sqqd2xVig/Ujm7IMp+uBVBwbb5IPPl3
	2KYIfyHQnZ6UuxG0lF7//DL6/a+bmxy4/YFSqs5zyY0oCNWKVP7kXLLgWtrfxSAdqRvZ+MMHnNV
	1Phe2cUSjPSvG0S3xI0oCCpFJ9x8=
X-Gm-Gg: ASbGncvrSwxiIzxXFA6mtcOW2/eHIUJNuCzn/e5teWOLQl+ghJEtBS3Bq6kjtiQzcyX
	T5ary2ck6OrU1r07A1hyr1zwb7F0DLZRsG6gseLrGK2kmrpuS94qf/A/Cq0wLfS5cfNhJFex2rj
	4Oubqw8hQEwyZXNy6+JEEJ
X-Google-Smtp-Source: AGHT+IFKlqay9Lq43K8Sv8JrDubvO/UBMiURyxfeMnvFSdliuWYBwK/0AtCmWZb38J2gxL1u1653TCZ0WigK/dAputE=
X-Received: by 2002:a05:622a:20c:b0:476:7715:d8e6 with SMTP id
 d75a77b69052e-4797750f8a4mr140946801cf.7.1744628326071; Mon, 14 Apr 2025
 03:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
 <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
 <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
 <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
 <CAFOi1A4c2-O_dmW=+YDt69JPnsRREX8nev+WT4-k3KuvP2VyiQ@mail.gmail.com>
 <CAAc7u9oyL7Vh97-d0BBrcXA2VS0syFsygJ6h89axf7KJsdCKFw@mail.gmail.com> <CAFOi1A68Q32BFxgRehHcGKZYPpAo5Ht9bPRtqiJvyqWr-Bc7iA@mail.gmail.com>
In-Reply-To: <CAFOi1A68Q32BFxgRehHcGKZYPpAo5Ht9bPRtqiJvyqWr-Bc7iA@mail.gmail.com>
From: Tim Vancauwenbergh <tim.vancauwenbergh13@gmail.com>
Date: Mon, 14 Apr 2025 12:58:35 +0200
X-Gm-Features: ATxdqUFy37RI0Kk9CUVYwiAKznSEqhPVSoLep76iNIghBG8ImuDkk42vP2nfBf8
Message-ID: <CAAc7u9q6q1fEhY_f9mprdRm8ofMT=mBN66L_HZ5=D2KAbdV1Tw@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: 2IJ66NCHUIABTDPZ5S4VU447MBXHSXL6
X-Message-ID-Hash: 2IJ66NCHUIABTDPZ5S4VU447MBXHSXL6
X-MailFrom: tim.vancauwenbergh13@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2IJ66NCHUIABTDPZ5S4VU447MBXHSXL6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3999587530672273962=="

--===============3999587530672273962==
Content-Type: multipart/alternative; boundary="000000000000a401060632baef38"

--000000000000a401060632baef38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,

running echo $XDG_DATA_HOME in the virtual environment gives:
/home/username/snap/code/188/.local/share
I am using Visual Studio Code, if it might help.

Tim

Op ma 14 apr 2025 om 11:51 schreef Martin Braun <martin.braun@ettus.com>:

> Ah, those are more recent than UHD 4.6.
>
> Is the environment variable XDG_DATA_HOME set on your system? What does
> "echo $XDG_DATA_HOME" print for you?
>
> BTW, if the only problem is that the cal data path is misattributed, then
> you can set the environment variable
> UHD_CAL_DATA_PATH=3D~/.local/uhd/shrae/uhd/cal. That should do the trick.
> However, I would still like to figure out what caused this.
>
> --M
>
> On Mon, Apr 14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh <
> tim.vancauwenbergh13@gmail.com> wrote:
>
>> Hello Martin,
>>
>> only installed via apt, I did not specify snap.
>> uhd.get_lib_path() returns: /lib/x86_64-linux-gnu -> libuhd.so found her=
e
>> uhd.get_pkg_path() returns: /lib
>> I am unable to use uhd.get_pkg_data_path() and uhd.get_module_paths() ->
>> uhd has no attribute
>>
>> Tim
>>
>> Op do 10 apr 2025 om 17:14 schreef Martin Braun <martin.braun@ettus.com>=
:
>>
>>> That was very helpful. So there's a discrepancy between what the
>>> cal-tool thinks the path is (~/.local/...) and what UHD thinks it is
>>> (~/snap/code/188/.local).
>>>
>>> I'm also a bit surprised about that UHD path. Did you install UHD via
>>> snap? (If yes, I didn't even know that was possible!). I know you say y=
ou
>>> installed via apt, but I'm just baffled why UHD thinks this is the righ=
t
>>> path.
>>>
>>> There are other path APIs, here is what they look like on a system wher=
e
>>> I install UHD, manually, into a random location:
>>>
>>> >>> uhd.get_lib_path()
>>> '/home/mbr0wn/prefix/master/lib'
>>> >>> uhd.get_pkg_data_path()
>>> '/home/mbr0wn/prefix/master/share/uhd'
>>> >>> uhd.get_cal_data_path()
>>> '/home/mbr0wn/.local/share/uhd/cal'
>>>
>>>
>>> The first (get_lib_path()) is the path where the libuhd.so file is
>>> located. Is that the case for you?
>>>
>>> You can see even there, the cal files are, by default, searched for in
>>> ~/.local/share/uhd/cal.
>>>
>>> --M
>>>
>>> On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh <
>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>
>>>> Hello Martin,
>>>>
>>>> it prints the following:
>>>> home/username/snap/code/188/.local/share/uhd/cal
>>>> That folder does not exist, the deepest path I can go is
>>>> home/username/snap/code/188/.local/share/
>>>> I manually created the folders uhd/cal and pasted the calibration file=
s
>>>> there. Now the function usrp.has_rx_power_reference() returns True. I'=
ll
>>>> investigate further.
>>>>
>>>> Tim
>>>>
>>>> Op wo 9 apr 2025 om 09:02 schreef Martin Braun <martin.braun@ettus.com
>>>> >:
>>>>
>>>>> Tim,
>>>>>
>>>>> sorry for suggesting this so late: What does this Python script print=
:
>>>>>
>>>>> import uhd
>>>>> print(uhd.get_cal_data_path())
>>>>>
>>>>>
>>>>> ?
>>>>>
>>>>> On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>
>>>>>> Hello Martin,
>>>>>>
>>>>>> thanks for your reply. It would be helpful to know where the driver
>>>>>> looks for the file, but until now I did not find any variable or fun=
ction
>>>>>> to obtain this location.
>>>>>>
>>>>>> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with
>>>>>> Python 3.12.3.
>>>>>> The following packages related to uhd are installed via apt:
>>>>>>
>>>>>> *Status**Package Name**Version**Architecture**Description*
>>>>>> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnuradio
>>>>>> universal hardware driver functions
>>>>>> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 univers=
al
>>>>>> hardware driver for Ettus Research products - library
>>>>>> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>>>>>> hardware driver for Ettus Research products - Python3
>>>>>> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device
>>>>>> support for SoapySDR
>>>>>> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware
>>>>>> driver for Ettus Research products - doc
>>>>>> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>>>>>> driver for Ettus Research products - host apps
>>>>>> Best regards,
>>>>>>
>>>>>> Tim
>>>>>>
>>>>>> Op di 8 apr 2025 om 10:14 schreef Martin Braun <
>>>>>> martin.braun@ettus.com>:
>>>>>>
>>>>>>> Tim,
>>>>>>>
>>>>>>> at first glance, you're doing everything right. Thanks for taking
>>>>>>> the time and reading the docs. We'll need to look into this.
>>>>>>>
>>>>>>> I saw you also opened
>>>>>>> https://github.com/EttusResearch/uhd/issues/842, that's very
>>>>>>> helpful. Sorry I can't give you the right answer immediately!
>>>>>>>
>>>>>>> --M
>>>>>>>
>>>>>>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>>>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>>>
>>>>>>>> Hello
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> I've recently run the uhd_power_cal.py script to calibrate the RX
>>>>>>>> paths of a B200mini using a calibrated signal generator.
>>>>>>>>
>>>>>>>> It generated two files, saved at
>>>>>>>> /home/username/.local/share/uhd/cal:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>>>>>>
>>>>>>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> Using python, I have the following code:
>>>>>>>>
>>>>>>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>>>>>>
>>>>>>>> This returns the following:
>>>>>>>>
>>>>>>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mbo=
ard_serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX', =
'rx_id': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', '=
rx_ref_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-R=
X1', 'rx_subdev_spec': 'A:A'}
>>>>>>>>
>>>>>>>> Running the following functions return false however.
>>>>>>>>
>>>>>>>> usrp.has_rx_power_reference()
>>>>>>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA=
1A#A'):
>>>>>>>>
>>>>>>>> Why? *How can I use the calibration file in python to obtain
>>>>>>>> estimated received power level at the RX side in dBm?* This is not
>>>>>>>> clear in the documentation. I would like to do this for the TX sid=
e as well.
>>>>>>>>
>>>>>>>> Thanks!
>>>>>>>>
>>>>>>>> References:
>>>>>>>>
>>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.htm=
l#a1dadf323c5f00ac4f93b231adc13e34...
>>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.ht=
ml#a1dadf323c5f00ac4f93b231adc13e34c>
>>>>>>>>
>>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database=
.html#a5605b43f778efc10f29cb616afb...
>>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1databas=
e.html#a5605b43f778efc10f29cb616afbfb7d9>
>>>>>>>> https://files.ettus.com/manual/page_power.html
>>>>>>>> _______________________________________________
>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a401060632baef38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>running echo $XDG_DATA_HOME =
in the virtual environment gives: /home/username/snap/code/188/.local/share=
</div><div>I am using Visual Studio Code, if it might help.</div><div><br><=
/div><div>Tim</div></div><br><div class=3D"gmail_quote gmail_quote_containe=
r"><div dir=3D"ltr" class=3D"gmail_attr">Op ma 14 apr 2025 om 11:51 schreef=
 Martin Braun &lt;<a href=3D"mailto:martin.braun@ettus.com">martin.braun@et=
tus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div>Ah, those are more recent than UHD 4.6.</div><div><b=
r></div><div>Is the environment variable XDG_DATA_HOME set on your system? =
What does &quot;echo $XDG_DATA_HOME&quot; print for you?</div><div><br></di=
v><div>BTW, if the only problem is that the cal data path is misattributed,=
 then you can set the environment variable UHD_CAL_DATA_PATH=3D~/.local/uhd=
/shrae/uhd/cal. That should do the trick. However, I would still like to fi=
gure out what caused this.</div><div><br></div><div>--M</div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 14=
, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh &lt;<a href=3D"mailto:tim.van=
cauwenbergh13@gmail.com" target=3D"_blank">tim.vancauwenbergh13@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hello Martin,<div><br></div><div>only installed via apt, I d=
id not specify snap.</div><div>uhd.get_lib_path() returns: /lib/x86_64-linu=
x-gnu -&gt; libuhd.so found here</div><div>uhd.get_pkg_path() returns: /lib=
</div><div>I am unable to use uhd.get_pkg_data_path() and uhd.get_module_pa=
ths() -&gt; uhd has no attribute</div><div><br></div><div>Tim</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op do 10=
 apr 2025 om 17:14 schreef Martin Braun &lt;<a href=3D"mailto:martin.braun@=
ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>That was=
 very helpful. So there&#39;s a discrepancy between what the cal-tool think=
s the path is (~/.local/...) and what UHD thinks it is (~/snap/code/188/.lo=
cal).</div><div><br></div><div>I&#39;m also a bit surprised about that UHD =
path. Did you install UHD via snap? (If yes, I didn&#39;t even know that wa=
s possible!). I know you say you installed via apt, but I&#39;m just baffle=
d why UHD thinks this is the right path.</div><div><br></div><div>There are=
 other path APIs, here is what they look like on a system where I install U=
HD, manually, into a random location:</div><div><br></div><div>&gt;&gt;&gt;=
 uhd.get_lib_path()<br>&#39;/home/mbr0wn/prefix/master/lib&#39;<br>&gt;&gt;=
&gt; uhd.get_pkg_data_path()<br>&#39;/home/mbr0wn/prefix/master/share/uhd&#=
39;<br>&gt;&gt;&gt; uhd.get_cal_data_path()<br>&#39;/home/mbr0wn/.local/sha=
re/uhd/cal&#39;</div><div><br></div><div><br></div><div>The first (get_lib_=
path()) is the path where the libuhd.so file is located. Is that the case f=
or you?</div><div><br></div><div>You can see even there, the cal files are,=
 by default, searched for in ~/.local/share/uhd/cal.</div><div><br></div><d=
iv>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh &lt=
;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_blank">tim.va=
ncauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Hello Martin,<div><br></div><div>i=
t prints the following: home/username/snap/code/188/.local/share/uhd/cal</d=
iv><div>That folder does not exist, the deepest path I can go is home/usern=
ame/snap/code/188/.local/share/</div><div>I manually created the folders uh=
d/cal and pasted the calibration files there. Now the function=C2=A0usrp.ha=
s_rx_power_reference() returns True. I&#39;ll investigate further.</div><di=
v><br></div><div>Tim</div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">Op wo 9 apr 2025 om 09:02 schreef Martin Braun &l=
t;<a href=3D"mailto:martin.braun@ettus.com" target=3D"_blank">martin.braun@=
ettus.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Tim,</div><div><br></div><div>sorry for suggesting=
 this so late: What does this Python script print:</div><div><br></div><div=
>import uhd</div><div>print(uhd.get_cal_data_path())</div><div><br></div><d=
iv><br></div><div>?</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancau=
wenbergh &lt;<a href=3D"mailto:tim.vancauwenbergh13@gmail.com" target=3D"_b=
lank">tim.vancauwenbergh13@gmail.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello Martin,<div><br>=
</div><div>thanks for your reply. It would be helpful to know where the dri=
ver looks for the file, but until now I did not find any variable or functi=
on to obtain this location.</div><div><br></div><div>FYI, I am using a virt=
ual environment on Ubuntu 24.0.2 LTS with Python 3.12.3.</div><div>The foll=
owing packages related to uhd are installed via apt:</div><div><br></div><d=
iv><table><thead><tr><th><strong>Status</strong></th><th><strong>Package Na=
me</strong></th><th><strong>Version</strong></th><th><strong>Architecture</=
strong></th><th><strong>Description</strong></th></tr></thead><tbody><tr><t=
d><code>ii</code></td><td><code>libgnuradio-uhd3.10.9t64:amd64</code></td><=
td>3.10.9.2-1.1ubuntu2</td><td>amd64</td><td>gnuradio universal hardware dr=
iver functions</td></tr><tr><td><code>ii</code></td><td><code>libuhd4.6.0t6=
4:amd64</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td=
>universal hardware driver for Ettus Research products - library</td></tr><=
tr><td><code>ii</code></td><td><code>python3-uhd</code></td><td>4.6.0.0+ds1=
-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware driver for Ett=
us Research products - Python3</td></tr><tr><td><code>ii</code></td><td><co=
de>soapysdr0.8-module-uhd:amd64</code></td><td>0.4.1-4build4</td><td>amd64<=
/td><td>UHD device support for SoapySDR</td></tr><tr><td><code>ii</code></t=
d><td><code>uhd-doc</code></td><td>4.6.0.0+ds1-5.1ubuntu0.24.04.1</td><td>a=
ll</td><td>universal hardware driver for Ettus Research products - doc</td>=
</tr><tr><td><code>ii</code></td><td><code>uhd-host</code></td><td>4.6.0.0+=
ds1-5.1ubuntu0.24.04.1</td><td>amd64</td><td>universal hardware driver for =
Ettus Research products - host apps</td></tr></tbody></table><br></div><div=
>Best regards,</div><div><br></div><div>Tim</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op di 8 apr 2025 om 10:14 =
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
-sizing:border-box"><div id=3D"m_-7091925167453697559m_-3095287405320035139=
m_-7160437921547283226m_-909707477585944065m_5671169136996207871m_417027944=
5011706748m_3453399925031800041m_-446173618698088206gmail-bodyDisplay" styl=
e=3D"box-sizing:border-box;word-break:break-word;line-height:1.71429;overfl=
ow:auto;margin-bottom:10px"><div style=3D"box-sizing:border-box;word-break:=
break-word;line-height:1.32;margin-bottom:10px"><p style=3D"box-sizing:bord=
er-box;margin:0px;padding:0px;line-height:1.42">Hello</p><p style=3D"box-si=
zing:border-box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p style=
=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42">I&#39;ve=
 recently run the uhd_power_cal.py script to calibrate the RX paths of a B2=
00mini using a calibrated signal generator.</p><p style=3D"box-sizing:borde=
r-box;margin:0px;padding:0px;line-height:1.42">It generated two files, save=
d at /home/username/.local/share/uhd/cal:</p><p style=3D"box-sizing:border-=
box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizi=
ng:border-box;margin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr_rx_rx=
2_33ECA1A#A.cal</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px=
;line-height:1.42">- b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal</p><p style=3D"box=
-sizing:border-box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p st=
yle=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42">Using=
 python, I have the following code:</p><pre style=3D"box-sizing:border-box;=
overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,mon=
ospace;font-size:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;line=
-height:1.71429;color:rgb(62,62,62);word-break:break-all;background-color:r=
gb(245,245,245);border:1px solid rgb(204,204,204);border-radius:0px">print(=
f&quot;RX info: {usrp.get_usrp_rx_info()}&quot;)</pre><p style=3D"box-sizin=
g:border-box;margin:0px;padding:0px;line-height:1.42">This returns the foll=
owing:</p><pre style=3D"box-sizing:border-box;overflow:auto;font-family:Men=
lo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:15px;padding=
:13px;margin-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,=
62,62);word-break:break-all;background-color:rgb(245,245,245);border:1px so=
lid rgb(204,204,204);border-radius:0px">RX info: {&#39;mboard_id&#39;: &#39=
;B200mini&#39;, &#39;mboard_name&#39;: &#39;B200mini&#39;, &#39;mboard_seri=
al&#39;: &#39;33ECA1A&#39;, &#39;module_serial&#39;: &#39;33ECA1A&#39;, &#3=
9;rx_antenna&#39;: &#39;TX/RX&#39;, &#39;rx_id&#39;: &#39;Unknown (0xffff)&=
#39;, &#39;rx_ref_power_key&#39;: &#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;rx_=
ref_power_serial&#39;: &#39;33ECA1A#A&#39;, &#39;rx_serial&#39;: &#39;&#39;=
, &#39;rx_subdev_name&#39;: &#39;FE-RX1&#39;, &#39;rx_subdev_spec&#39;: &#3=
9;A:A&#39;}</pre><p style=3D"box-sizing:border-box;margin:0px;padding:0px;l=
ine-height:1.42">Running the following functions return false however.</p><=
pre style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,C=
onsolas,&quot;Courier New&quot;,monospace;font-size:15px;padding:13px;margi=
n-top:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62);word=
-break:break-all;background-color:rgb(245,245,245);border:1px solid rgb(204=
,204,204);border-radius:0px">usrp.has_rx_power_reference()<br style=3D"box-=
sizing:border-box">uhd.usrp.cal.database.has_cal_data(&#39;b2xxmini_pwr_rx_=
tx+rx&#39;, &#39;33ECA1A#A&#39;):</pre><div style=3D"box-sizing:border-box"=
><div style=3D"box-sizing:border-box">Why? <b>How can I use the calibration=
 file in python to obtain estimated received power level at the RX side in =
dBm?</b> This is not clear in the documentation. I would like to do this fo=
r the TX side as well.</div><div style=3D"box-sizing:border-box">=C2=A0</di=
v><div style=3D"box-sizing:border-box">Thanks!</div><div style=3D"box-sizin=
g:border-box">=C2=A0</div><div style=3D"box-sizing:border-box">References:<=
/div><div style=3D"box-sizing:border-box"><a href=3D"https://files.ettus.co=
m/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13=
e34c" rel=3D"nofollow noopener noreferrer" style=3D"box-sizing:border-box;b=
ackground-color:transparent;color:rgb(4,65,35)" target=3D"_blank">https://f=
iles.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac=
4f93b231adc13e34...</a></div><div style=3D"box-sizing:border-box"><a href=
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

--000000000000a401060632baef38--

--===============3999587530672273962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3999587530672273962==--
