Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DBCA87C5D
	for <lists+usrp-users@lfdr.de>; Mon, 14 Apr 2025 11:51:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6104C385D51
	for <lists+usrp-users@lfdr.de>; Mon, 14 Apr 2025 05:51:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744624301; bh=4QjrXRJ2vE9uMjz8hEZohJj4pun5bh3U+rCG8Rhw1gk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=eEHjDi23vpxeSV6rC6f/XEKK7kP6nNUVw6uqBurfU8EqMYgsFhRDbpcdB31Hkh1ub
	 mf/a3CMiIW9iWs/8mP+ivRYrUZ6kYuvw2nLAfwpeXtaxhYBDH6CMjyZIm+9uFr5VEs
	 Xp833HQTSd9xALnc4iuCeD/aU+erk/Cw9QUg38fRSQ30FxKl3XT96lR2myGlHGEVYM
	 OQ+Jge4458UcpsLXSXyE83baW9fEpkfIZb5HjcPl3MCSnmbbwrxFR+wg+5C4YgTCFg
	 53an8glB1t74HoxV1T/R9DIaA+2b9p6OMYN8st069RyIwlD1e0tXJj12VcKh9ajoTk
	 5/Ki9QOVUNyrw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 8B9AE385AFA
	for <usrp-users@lists.ettus.com>; Mon, 14 Apr 2025 05:50:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="hgA2MXQs";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5e8be1c6ff8so7534526a12.1
        for <usrp-users@lists.ettus.com>; Mon, 14 Apr 2025 02:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744624243; x=1745229043; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=50wKxLlo33+CwW1y5n1Wv8+1+6Qsc8oIxoYG6lYx7vw=;
        b=hgA2MXQsohWe6YX58Kvs8+kqDf9WdfGp5hWDpxUwgR7jKL3om+hywcIehTU3KK/SSq
         VE1BZEmyIk4JxWFLagk+92WS6DjC+pXBMr9Ylu3HtwbMAPBUWvq0z7IIey2bd2PJvYM9
         Jy/doRJsYWASN3xWYCLm4pbJMZODKRmyCPZP3PgmxijuR7AkIRjx3p2dzuVES07ljVDJ
         S3IbKgJmnPO7GjApPDup7LY3bxa4Sjsy0ohQ4S28inPjfEzqsJPOYwHpPKybXdWCfS23
         /nyqoAkZXOdyiQeIZ42T1jZEA/tFOrGvavpnHfBHjvKClN9UkJQbgfBbcnyDo856C2Zy
         cZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744624243; x=1745229043;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=50wKxLlo33+CwW1y5n1Wv8+1+6Qsc8oIxoYG6lYx7vw=;
        b=kROcghj7nLLdmXq7gU0tSuqTrwAiUy44fDkDiJ5YCurYhZS/z8aiGEGdoYH36ByNRd
         Mob4vYIntjCyifu/V43opMRr4m/Av/A/YTiDMTveyjReGuojRzXjfCxaIXkcRN2kZnNL
         GjDSW5SpKGW+PYsfkLW4JHzwM7ujRXhLS6QRCO1RFTn+fKG2KIjBAGAwg4/9OW/0Ryzp
         KhsyBjOxgxP91pQZjPlMSfc9r3UWpC9IOOPHqpW92qE3h7EdfJ858GzuxxFXJ78D/c60
         pC4OMViDIEM6amGkUDqdNQAcogaE+79Vv27Iz7RycVLCtFvC59RXq7GYGzwfL8Me+Geh
         OtXg==
X-Gm-Message-State: AOJu0Yx+8eTgci6+7sL5pnl5QZjAzQ1KR5XqXwDp+nE/j2CXMJFktvMs
	K6psXtX/us0We2P1u2YrfMQzBizjyQaiNTRUQGE+3VRv7S0ZJ4/nFVzjoPaTjcZHzJCX1vWEcp+
	GbhCLxguCrwhU5iMCPTl0w3TkQXYv5KYZZW8SwvM5FsynKCuG0Ic=
X-Gm-Gg: ASbGncvV2SH+QkFq0NP2pp2NIUFuYrEDpj3iRBi1WnXBVBHoyKMJjXSVINccKFIiEwi
	3agsPv/GUmfzL7yDnHkJYZ9lA8HGq043aLcmkujZ0401Uve1YHNQiVfexMkfxJcGu2rhZWCuUL2
	+e4b4SjNaztjytxNyRJDFMeBBn7ffMiHjJARqx+OY41Eqm4qP/6VZZ8w==
X-Google-Smtp-Source: AGHT+IGoOCDYyLTGdAsYXdnZx6sbHb09AUSOxaE7WFujAcknhXvaVbFKa3+DRJqPvzKcIJdUlMjunOas0t92bs09cBU=
X-Received: by 2002:a05:6402:270f:b0:5d9:82bc:ad06 with SMTP id
 4fb4d7f45d1cf-5f36f778101mr10630286a12.3.1744624241607; Mon, 14 Apr 2025
 02:50:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAAc7u9rX1+Tv7T2ba3sSnVXYyobrU2nF6W0ZTHXkqeY3M=GvoQ@mail.gmail.com>
 <CAFOi1A73LP4UtCZsTH97oZRZzZgi90Qt3YfdyL-udAK3Yu+zoQ@mail.gmail.com>
 <CAAc7u9owB5J4Yr2vaJVpt_E_S0PzBk72LNRar7t0hDgL4Skmsw@mail.gmail.com>
 <CAFOi1A7NbX8p0aMqGdKR4kwfsL-GM=GQWjktSooN0nsj7YbNWg@mail.gmail.com>
 <CAAc7u9qJNRVFWXqrZmLbCz8WVrr7YT2wLrXTq+sU6uubQ8EWOg@mail.gmail.com>
 <CAFOi1A4c2-O_dmW=+YDt69JPnsRREX8nev+WT4-k3KuvP2VyiQ@mail.gmail.com> <CAAc7u9oyL7Vh97-d0BBrcXA2VS0syFsygJ6h89axf7KJsdCKFw@mail.gmail.com>
In-Reply-To: <CAAc7u9oyL7Vh97-d0BBrcXA2VS0syFsygJ6h89axf7KJsdCKFw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 14 Apr 2025 11:50:30 +0200
X-Gm-Features: ATxdqUEu0QIGqLImDHZ4NJqWCfHy_5pTbjykFeIh2nfv8x8MULR9Qwpv0v6vL8Q
Message-ID: <CAFOi1A68Q32BFxgRehHcGKZYPpAo5Ht9bPRtqiJvyqWr-Bc7iA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: EEMTFVPJL6A3JIWHRKNVWQAL47BLCU4U
X-Message-ID-Hash: EEMTFVPJL6A3JIWHRKNVWQAL47BLCU4U
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Utilizing power calibration to obtain actual received power level
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEMTFVPJL6A3JIWHRKNVWQAL47BLCU4U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1765144640880906538=="

--===============1765144640880906538==
Content-Type: multipart/alternative; boundary="0000000000003021670632b9fcf1"

--0000000000003021670632b9fcf1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah, those are more recent than UHD 4.6.

Is the environment variable XDG_DATA_HOME set on your system? What does
"echo $XDG_DATA_HOME" print for you?

BTW, if the only problem is that the cal data path is misattributed, then
you can set the environment variable
UHD_CAL_DATA_PATH=3D~/.local/uhd/shrae/uhd/cal. That should do the trick.
However, I would still like to figure out what caused this.

--M

On Mon, Apr 14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hello Martin,
>
> only installed via apt, I did not specify snap.
> uhd.get_lib_path() returns: /lib/x86_64-linux-gnu -> libuhd.so found here
> uhd.get_pkg_path() returns: /lib
> I am unable to use uhd.get_pkg_data_path() and uhd.get_module_paths() ->
> uhd has no attribute
>
> Tim
>
> Op do 10 apr 2025 om 17:14 schreef Martin Braun <martin.braun@ettus.com>:
>
>> That was very helpful. So there's a discrepancy between what the cal-too=
l
>> thinks the path is (~/.local/...) and what UHD thinks it is
>> (~/snap/code/188/.local).
>>
>> I'm also a bit surprised about that UHD path. Did you install UHD via
>> snap? (If yes, I didn't even know that was possible!). I know you say yo=
u
>> installed via apt, but I'm just baffled why UHD thinks this is the right
>> path.
>>
>> There are other path APIs, here is what they look like on a system where
>> I install UHD, manually, into a random location:
>>
>> >>> uhd.get_lib_path()
>> '/home/mbr0wn/prefix/master/lib'
>> >>> uhd.get_pkg_data_path()
>> '/home/mbr0wn/prefix/master/share/uhd'
>> >>> uhd.get_cal_data_path()
>> '/home/mbr0wn/.local/share/uhd/cal'
>>
>>
>> The first (get_lib_path()) is the path where the libuhd.so file is
>> located. Is that the case for you?
>>
>> You can see even there, the cal files are, by default, searched for in
>> ~/.local/share/uhd/cal.
>>
>> --M
>>
>> On Thu, Apr 10, 2025 at 10:13=E2=80=AFAM Tim Vancauwenbergh <
>> tim.vancauwenbergh13@gmail.com> wrote:
>>
>>> Hello Martin,
>>>
>>> it prints the following: home/username/snap/code/188/.local/share/uhd/c=
al
>>> That folder does not exist, the deepest path I can go is
>>> home/username/snap/code/188/.local/share/
>>> I manually created the folders uhd/cal and pasted the calibration files
>>> there. Now the function usrp.has_rx_power_reference() returns True. I'l=
l
>>> investigate further.
>>>
>>> Tim
>>>
>>> Op wo 9 apr 2025 om 09:02 schreef Martin Braun <martin.braun@ettus.com>=
:
>>>
>>>> Tim,
>>>>
>>>> sorry for suggesting this so late: What does this Python script print:
>>>>
>>>> import uhd
>>>> print(uhd.get_cal_data_path())
>>>>
>>>>
>>>> ?
>>>>
>>>> On Tue, Apr 8, 2025 at 10:53=E2=80=AFAM Tim Vancauwenbergh <
>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>
>>>>> Hello Martin,
>>>>>
>>>>> thanks for your reply. It would be helpful to know where the driver
>>>>> looks for the file, but until now I did not find any variable or func=
tion
>>>>> to obtain this location.
>>>>>
>>>>> FYI, I am using a virtual environment on Ubuntu 24.0.2 LTS with Pytho=
n
>>>>> 3.12.3.
>>>>> The following packages related to uhd are installed via apt:
>>>>>
>>>>> *Status**Package Name**Version**Architecture**Description*
>>>>> ii libgnuradio-uhd3.10.9t64:amd64 3.10.9.2-1.1ubuntu2 amd64 gnuradio
>>>>> universal hardware driver functions
>>>>> ii libuhd4.6.0t64:amd64 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universa=
l
>>>>> hardware driver for Ettus Research products - library
>>>>> ii python3-uhd 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal
>>>>> hardware driver for Ettus Research products - Python3
>>>>> ii soapysdr0.8-module-uhd:amd64 0.4.1-4build4 amd64 UHD device
>>>>> support for SoapySDR
>>>>> ii uhd-doc 4.6.0.0+ds1-5.1ubuntu0.24.04.1 all universal hardware
>>>>> driver for Ettus Research products - doc
>>>>> ii uhd-host 4.6.0.0+ds1-5.1ubuntu0.24.04.1 amd64 universal hardware
>>>>> driver for Ettus Research products - host apps
>>>>> Best regards,
>>>>>
>>>>> Tim
>>>>>
>>>>> Op di 8 apr 2025 om 10:14 schreef Martin Braun <martin.braun@ettus.co=
m
>>>>> >:
>>>>>
>>>>>> Tim,
>>>>>>
>>>>>> at first glance, you're doing everything right. Thanks for taking th=
e
>>>>>> time and reading the docs. We'll need to look into this.
>>>>>>
>>>>>> I saw you also opened https://github.com/EttusResearch/uhd/issues/84=
2,
>>>>>> that's very helpful. Sorry I can't give you the right answer immedia=
tely!
>>>>>>
>>>>>> --M
>>>>>>
>>>>>> On Thu, Apr 3, 2025 at 11:28=E2=80=AFAM Tim Vancauwenbergh <
>>>>>> tim.vancauwenbergh13@gmail.com> wrote:
>>>>>>
>>>>>>> Hello
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> I've recently run the uhd_power_cal.py script to calibrate the RX
>>>>>>> paths of a B200mini using a calibrated signal generator.
>>>>>>>
>>>>>>> It generated two files, saved at /home/username/.local/share/uhd/ca=
l:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> - b2xxmini_pwr_rx_rx2_33ECA1A#A.cal
>>>>>>>
>>>>>>> - b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> Using python, I have the following code:
>>>>>>>
>>>>>>> print(f"RX info: {usrp.get_usrp_rx_info()}")
>>>>>>>
>>>>>>> This returns the following:
>>>>>>>
>>>>>>> RX info: {'mboard_id': 'B200mini', 'mboard_name': 'B200mini', 'mboa=
rd_serial': '33ECA1A', 'module_serial': '33ECA1A', 'rx_antenna': 'TX/RX', '=
rx_id': 'Unknown (0xffff)', 'rx_ref_power_key': 'b2xxmini_pwr_rx_tx+rx', 'r=
x_ref_power_serial': '33ECA1A#A', 'rx_serial': '', 'rx_subdev_name': 'FE-RX=
1', 'rx_subdev_spec': 'A:A'}
>>>>>>>
>>>>>>> Running the following functions return false however.
>>>>>>>
>>>>>>> usrp.has_rx_power_reference()
>>>>>>> uhd.usrp.cal.database.has_cal_data('b2xxmini_pwr_rx_tx+rx', '33ECA1=
A#A'):
>>>>>>>
>>>>>>> Why? *How can I use the calibration file in python to obtain
>>>>>>> estimated received power level at the RX side in dBm?* This is not
>>>>>>> clear in the documentation. I would like to do this for the TX side=
 as well.
>>>>>>>
>>>>>>> Thanks!
>>>>>>>
>>>>>>> References:
>>>>>>>
>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html=
#a1dadf323c5f00ac4f93b231adc13e34...
>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.htm=
l#a1dadf323c5f00ac4f93b231adc13e34c>
>>>>>>>
>>>>>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.=
html#a5605b43f778efc10f29cb616afb...
>>>>>>> <https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database=
.html#a5605b43f778efc10f29cb616afbfb7d9>
>>>>>>> https://files.ettus.com/manual/page_power.html
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000003021670632b9fcf1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ah, those are more recent than UHD 4.6.</div><div><br=
></div><div>Is the environment variable XDG_DATA_HOME set on your system? W=
hat does &quot;echo $XDG_DATA_HOME&quot; print for you?</div><div><br></div=
><div>BTW, if the only problem is that the cal data path is misattributed, =
then you can set the environment variable UHD_CAL_DATA_PATH=3D~/.local/uhd/=
shrae/uhd/cal. That should do the trick. However, I would still like to fig=
ure out what caused this.</div><div><br></div><div>--M</div></div><br><div =
class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Apr 14, 2025 at 11:39=E2=80=AFAM Tim Vancauwenbergh &lt;<a h=
ref=3D"mailto:tim.vancauwenbergh13@gmail.com">tim.vancauwenbergh13@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Hello Martin,<div><br></div><div>only installed via apt, =
I did not specify snap.</div><div>uhd.get_lib_path() returns: /lib/x86_64-l=
inux-gnu -&gt; libuhd.so found here</div><div>uhd.get_pkg_path() returns: /=
lib</div><div>I am unable to use uhd.get_pkg_data_path() and uhd.get_module=
_paths() -&gt; uhd has no attribute</div><div><br></div><div>Tim</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op do=
 10 apr 2025 om 17:14 schreef Martin Braun &lt;<a href=3D"mailto:martin.bra=
un@ettus.com" target=3D"_blank">martin.braun@ettus.com</a>&gt;:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>That =
was very helpful. So there&#39;s a discrepancy between what the cal-tool th=
inks the path is (~/.local/...) and what UHD thinks it is (~/snap/code/188/=
.local).</div><div><br></div><div>I&#39;m also a bit surprised about that U=
HD path. Did you install UHD via snap? (If yes, I didn&#39;t even know that=
 was possible!). I know you say you installed via apt, but I&#39;m just baf=
fled why UHD thinks this is the right path.</div><div><br></div><div>There =
are other path APIs, here is what they look like on a system where I instal=
l UHD, manually, into a random location:</div><div><br></div><div>&gt;&gt;&=
gt; uhd.get_lib_path()<br>&#39;/home/mbr0wn/prefix/master/lib&#39;<br>&gt;&=
gt;&gt; uhd.get_pkg_data_path()<br>&#39;/home/mbr0wn/prefix/master/share/uh=
d&#39;<br>&gt;&gt;&gt; uhd.get_cal_data_path()<br>&#39;/home/mbr0wn/.local/=
share/uhd/cal&#39;</div><div><br></div><div><br></div><div>The first (get_l=
ib_path()) is the path where the libuhd.so file is located. Is that the cas=
e for you?</div><div><br></div><div>You can see even there, the cal files a=
re, by default, searched for in ~/.local/share/uhd/cal.</div><div><br></div=
><div>--M</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
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
=3D"box-sizing:border-box"><div id=3D"m_-3095287405320035139m_-716043792154=
7283226m_-909707477585944065m_5671169136996207871m_4170279445011706748m_345=
3399925031800041m_-446173618698088206gmail-bodyDisplay" style=3D"box-sizing=
:border-box;word-break:break-word;line-height:1.71429;overflow:auto;margin-=
bottom:10px"><div style=3D"box-sizing:border-box;word-break:break-word;line=
-height:1.32;margin-bottom:10px"><p style=3D"box-sizing:border-box;margin:0=
px;padding:0px;line-height:1.42">Hello</p><p style=3D"box-sizing:border-box=
;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:=
border-box;margin:0px;padding:0px;line-height:1.42">I&#39;ve recently run t=
he uhd_power_cal.py script to calibrate the RX paths of a B200mini using a =
calibrated signal generator.</p><p style=3D"box-sizing:border-box;margin:0p=
x;padding:0px;line-height:1.42">It generated two files, saved at /home/user=
name/.local/share/uhd/cal:</p><p style=3D"box-sizing:border-box;margin:0px;=
padding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizing:border-box;m=
argin:0px;padding:0px;line-height:1.42">- b2xxmini_pwr_rx_rx2_33ECA1A#A.cal=
</p><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.=
42">- b2xxmini_pwr_rx_tx+rx_33ECA1A#A.cal</p><p style=3D"box-sizing:border-=
box;margin:0px;padding:0px;line-height:1.42">=C2=A0</p><p style=3D"box-sizi=
ng:border-box;margin:0px;padding:0px;line-height:1.42">Using python, I have=
 the following code:</p><pre style=3D"box-sizing:border-box;overflow:auto;f=
ont-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-siz=
e:15px;padding:13px;margin-top:0px;margin-bottom:13.5px;line-height:1.71429=
;color:rgb(62,62,62);word-break:break-all;background-color:rgb(245,245,245)=
;border:1px solid rgb(204,204,204);border-radius:0px">print(f&quot;RX info:=
 {usrp.get_usrp_rx_info()}&quot;)</pre><p style=3D"box-sizing:border-box;ma=
rgin:0px;padding:0px;line-height:1.42">This returns the following:</p><pre =
style=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,Conso=
las,&quot;Courier New&quot;,monospace;font-size:15px;padding:13px;margin-to=
p:0px;margin-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62);word-bre=
ak:break-all;background-color:rgb(245,245,245);border:1px solid rgb(204,204=
,204);border-radius:0px">RX info: {&#39;mboard_id&#39;: &#39;B200mini&#39;,=
 &#39;mboard_name&#39;: &#39;B200mini&#39;, &#39;mboard_serial&#39;: &#39;3=
3ECA1A&#39;, &#39;module_serial&#39;: &#39;33ECA1A&#39;, &#39;rx_antenna&#3=
9;: &#39;TX/RX&#39;, &#39;rx_id&#39;: &#39;Unknown (0xffff)&#39;, &#39;rx_r=
ef_power_key&#39;: &#39;b2xxmini_pwr_rx_tx+rx&#39;, &#39;rx_ref_power_seria=
l&#39;: &#39;33ECA1A#A&#39;, &#39;rx_serial&#39;: &#39;&#39;, &#39;rx_subde=
v_name&#39;: &#39;FE-RX1&#39;, &#39;rx_subdev_spec&#39;: &#39;A:A&#39;}</pr=
e><p style=3D"box-sizing:border-box;margin:0px;padding:0px;line-height:1.42=
">Running the following functions return false however.</p><pre style=3D"bo=
x-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;C=
ourier New&quot;,monospace;font-size:15px;padding:13px;margin-top:0px;margi=
n-bottom:13.5px;line-height:1.71429;color:rgb(62,62,62);word-break:break-al=
l;background-color:rgb(245,245,245);border:1px solid rgb(204,204,204);borde=
r-radius:0px">usrp.has_rx_power_reference()<br style=3D"box-sizing:border-b=
ox">uhd.usrp.cal.database.has_cal_data(&#39;b2xxmini_pwr_rx_tx+rx&#39;, &#3=
9;33ECA1A#A&#39;):</pre><div style=3D"box-sizing:border-box"><div style=3D"=
box-sizing:border-box">Why? <b>How can I use the calibration file in python=
 to obtain estimated received power level at the RX side in dBm?</b> This i=
s not clear in the documentation. I would like to do this for the TX side a=
s well.</div><div style=3D"box-sizing:border-box">=C2=A0</div><div style=3D=
"box-sizing:border-box">Thanks!</div><div style=3D"box-sizing:border-box">=
=C2=A0</div><div style=3D"box-sizing:border-box">References:</div><div styl=
e=3D"box-sizing:border-box"><a href=3D"https://files.ettus.com/manual/class=
uhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e34c" rel=3D"n=
ofollow noopener noreferrer" style=3D"box-sizing:border-box;background-colo=
r:transparent;color:rgb(4,65,35)" target=3D"_blank">https://files.ettus.com=
/manual/classuhd_1_1usrp_1_1multi__usrp.html#a1dadf323c5f00ac4f93b231adc13e=
34...</a></div><div style=3D"box-sizing:border-box"><a href=3D"https://file=
s.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.html#a5605b43f778efc=
10f29cb616afbfb7d9" rel=3D"nofollow noopener noreferrer" style=3D"box-sizin=
g:border-box;background-color:transparent;color:rgb(4,65,35)" target=3D"_bl=
ank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1cal_1_1database.htm=
l#a5605b43f778efc10f29cb616afb...</a></div><div style=3D"box-sizing:border-=
box"><a href=3D"https://files.ettus.com/manual/page_power.html" rel=3D"nofo=
llow noopener noreferrer" style=3D"box-sizing:border-box;background-color:t=
ransparent;color:rgb(4,65,35)" target=3D"_blank">https://files.ettus.com/ma=
nual/page_power.html</a></div></div></div></div></div></div></div></div>
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

--0000000000003021670632b9fcf1--

--===============1765144640880906538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1765144640880906538==--
