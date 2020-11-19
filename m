Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED0C2B9C6E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 22:04:14 +0100 (CET)
Received: from [::1] (port=40760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfr6A-0006Az-Kw; Thu, 19 Nov 2020 16:04:10 -0500
Received: from mail-lj1-f177.google.com ([209.85.208.177]:41517)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <chfl5156@colorado.edu>)
 id 1kfr67-0005wX-C3
 for USRP-users@lists.ettus.com; Thu, 19 Nov 2020 16:04:07 -0500
Received: by mail-lj1-f177.google.com with SMTP id v20so7764241ljk.8
 for <USRP-users@lists.ettus.com>; Thu, 19 Nov 2020 13:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=colorado.edu; s=google;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=hv8Dd+MFPR7MMZo6ZEyYYdCzOPiDvfhpyxmLgKILbb8=;
 b=M66/Tx6mHV+OjJH4DBHX06NjWLz53y5/ydB3kJjE9u3xSreC33q4XvjVm/561ok01h
 QnMVDlxXBwtXLS6Nzw74AzZv+Sc2jawA9vE7W6DoMNgDYNFvIrkROnT17SbIkmtbYdo0
 4izBZd3B/R/7zxVIe0DfyqPG2xpt2E3Ciz1SLyIQrk5DEewP7KsY4YCEWK13adjPOx7Q
 P56P+Ncb2ySsohTnyH7SAkPxzvpmpY/1VKlXm2AMItweb7WhdxufoV5CpdjK/ieFAR5A
 s98fWhrhnKUcakxe1Cw/JOYAphaYYE66RM5MB9AS+hDYHEOqwYyvy4Gy7+1fuoKxw/ZB
 Hwxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=hv8Dd+MFPR7MMZo6ZEyYYdCzOPiDvfhpyxmLgKILbb8=;
 b=lkmav2Ug5ZC0wlsxdGoGG9gdIETzEAEuXo1DG2wFWEUkecVsNdNBXChmKZ3sR1lOgh
 /4sgf2xAdTdauWD8vj9TeyK1H+0spGaxZTENIeUoNAmVi7aJD+coUQqWgGEVeOWdF/Ms
 FrEv6gJAZAGjB8KIZh0pBkfbD/M4+Mtf7mRWBl3JFb1W70xhaas7vmkK8qUrBRS1N/H7
 ezZlSGM0VJLhsvsu+j20480gk9eSNiZGYoXXOTJZY8vc9TZgwb/fInb++0y4o23B1Z6q
 U3xKm7Urdbr7a04xx0lq0K9MEmJ2vrUuDzsewvF1WXB5+RAnlPaX+iG7kQUcF7eWVRwo
 mCTQ==
X-Gm-Message-State: AOAM532NcsMWQubLRayjhFq4Chwtqc5OqgWh9J8CrvnZK6ecSKMRRM81
 3pFFNvFysWlz3ebS8ERPWwQlZcnt1PCDZiHvk/257A==
X-Google-Smtp-Source: ABdhPJyxxl5oBX3OCj41P18HpcCzmLsGqZIna3nGBSUlkCIHPdLjDCqgaJ4CTd+6mdPEBs3kUQhpnCI+m1R1Ykm15es=
X-Received: by 2002:a2e:9588:: with SMTP id w8mr6073345ljh.335.1605819805783; 
 Thu, 19 Nov 2020 13:03:25 -0800 (PST)
MIME-Version: 1.0
References: <CAM+cdhLHCCLtDbjih2U+fPidDXtuQjf0syty6YwuSeszQLNx+w@mail.gmail.com>
 <52524682-BA34-4392-9CCD-D7930C577AA8@gmail.com>
 <CAM+cdhKDOrpZ-Ghyv=NZgNSKaa1OTKNB+Xwd=G7aY4zyAMpu+w@mail.gmail.com>
In-Reply-To: <CAM+cdhKDOrpZ-Ghyv=NZgNSKaa1OTKNB+Xwd=G7aY4zyAMpu+w@mail.gmail.com>
Date: Thu, 19 Nov 2020 14:03:14 -0700
Message-ID: <CAM+cdh+w+TyyAxVhwc1ZV5fwYz0oXh418a=6vcLgLp6wdxsgUQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Ettus N310 LO IN RX Synchronization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Christopher Flood via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Christopher.Flood@colorado.edu
Content-Type: multipart/mixed; boundary="===============0421924874225571992=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============0421924874225571992==
Content-Type: multipart/alternative; boundary="0000000000001907ed05b47c0fea"

--0000000000001907ed05b47c0fea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just for my own edification, what is the exact role of the signal that is
put into the LO IN RX port? And why does it need to be exactly twice the
desired receive frequency? Wouldn't there be additional resolution for any
frequency greater than twice the desired receive frequency?

On Thu, Nov 19, 2020 at 1:11 PM Christopher Flood <
Christopher.Flood@colorado.edu> wrote:

> Yes, the signal should be at +3dBm, the Vrms is ~300mV into a 50 ohm load=
.
> The frequency of the signal is also twice the frequency of the signal I'm
> trying to gather data on. However, due to the way the documentation is
> phrased, I wasn't sure if 20MHz is too low of a frequency for the LO RX I=
N.
>
> I have not tried the init_cals=3Dbasic argument. I can give that a shot a=
nd
> report back.
>
> -Chris
>
> On Thu, Nov 19, 2020, 12:32 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
>
>> Are you inputting an LO signal at twice the desired frequency and at
>> +3dBm?
>>
>> Have you tried adding init_cals=3DBASIC to your device ages?
>>
>> Sent from my iPhone
>>
>> > On Nov 19, 2020, at 2:26 PM, Christopher Flood via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hi all,
>> >
>> > I've seen some discussion about this on the email lists, but I'm still
>> having a bit of trouble. I'm trying to use the LO IN RX ports on the fro=
nt
>> of the N310 to synchronize the oscillators on the two daughterboards. I =
was
>> thinking I could generate a signal on one of the TX/RX ports of the SDR =
and
>> feed that into the LO IN RX ports at the appropriate frequency and power=
.
>> However, when I test this setup in GNU Radio Companion I don't get any
>> meaningful data, so I must be doing something wrong.
>> >
>> > The input signal that I want to sample is a 10MHz signal that is going
>> into an RX2 port on the front end of the SDR. When I set the device
>> argument "rx_lo_source=3Dinternal" and run it, the data I get looks exac=
tly
>> how I would expect. When I change the device argument to
>> "rx_lo_source=3Dexternal" and run it, I don't get anything that makes se=
nse.
>> >
>> > Am I using the LO IN RX ports correctly? The documentation doesn't say
>> much besides power and frequency ranges.
>> >
>> > Any help or advice would be much appreciated.
>> >
>> > -Chris
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> >
>> http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT7=
4BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTY=
ICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFF=
SQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJ=
FNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tv=
C2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE=
03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ett=
us.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com
>>
>>

--0000000000001907ed05b47c0fea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just for my own edification, what is the exact role of the=
 signal that is put into the LO IN RX port? And why does it need to be exac=
tly twice the desired receive frequency? Wouldn&#39;t there be additional r=
esolution for any frequency greater than twice the desired receive frequenc=
y?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Nov 19, 2020 at 1:11 PM Christopher Flood &lt;<a href=3D"mailto:C=
hristopher.Flood@colorado.edu">Christopher.Flood@colorado.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"au=
to"><div>Yes, the signal should be at +3dBm, the Vrms is ~300mV into a 50 o=
hm load. The frequency of the signal is also twice the frequency of the sig=
nal I&#39;m trying to gather data on. However, due to the way the documenta=
tion is phrased, I wasn&#39;t sure if 20MHz is too low of a frequency for t=
he LO RX IN.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">I hav=
e not tried the init_cals=3Dbasic argument. I can give that a shot and repo=
rt back.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">-Chris=C2=
=A0<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Nov 19, 2020, 12:32 PM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Are you inputting an LO signal at twice the desired frequency and at +3dB=
m?<br>
<br>
Have you tried adding init_cals=3DBASIC to your device ages?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Nov 19, 2020, at 2:26 PM, Christopher Flood via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" rel=3D"noreferrer" target=3D"_bla=
nk">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I&#39;ve seen some discussion about this on the email lists, but I&#39=
;m still having a bit of trouble. I&#39;m trying to use the LO IN RX ports =
on the front of the N310 to synchronize the oscillators on the two daughter=
boards. I was thinking I could generate a signal on one of the TX/RX ports =
of the SDR and feed that into the LO IN RX ports at the appropriate frequen=
cy and power. However, when I test this setup in GNU Radio Companion I don&=
#39;t get any meaningful data, so I must be doing something wrong. <br>
&gt; <br>
&gt; The input signal that I want to sample is a 10MHz signal that is going=
 into an RX2 port on the front end of the SDR. When I set the device argume=
nt &quot;rx_lo_source=3Dinternal&quot; and run it, the data I get looks exa=
ctly how I would expect. When I change the device argument to &quot;rx_lo_s=
ource=3Dexternal&quot; and run it, I don&#39;t get anything that makes sens=
e. <br>
&gt; <br>
&gt; Am I using the LO IN RX ports correctly? The documentation doesn&#39;t=
 say much besides power and frequency ranges. <br>
&gt; <br>
&gt; Any help or advice would be much appreciated.<br>
&gt; <br>
&gt; -Chris<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" targe=
t=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://secure-web.cisco.com/1rpFFtn1JZDE_g214Q-YS6vXmf7iX-G=
rSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFMF-Lzacu4VXZpGTxpMgLHyxfkdQ2pz=
OtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUBV2IKiJN9B3Z0EGCGPr6nbTyCm-I7d=
JfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_KoENsd6WDKRct0TsItd4_dk4xBZEWrw=
Nqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ7xvd9EiKc-aK5WHC2syeWL5YAO5QN=
CrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3jbvK3xggz-HHgjahAsx6zRH86NZDIo=
Se5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8mCGzGXTKfyvJuFHID1yA/http%3A%2=
F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com" rel=
=3D"noreferrer noreferrer" target=3D"_blank">http://secure-web.cisco.com/1r=
pFFtn1JZDE_g214Q-YS6vXmf7iX-GrSqz5_gIRlzT74BRG0LQVcDxlbCKOBLjxI7GcMNxycsBFM=
F-Lzacu4VXZpGTxpMgLHyxfkdQ2pzOtNNtecm_gMTYICiRaahesVZWF5a2dj7cjYzaLEjuC4PUB=
V2IKiJN9B3Z0EGCGPr6nbTyCm-I7dJfEsfYsSIFdFFSQP6iWj2NrE4xYBVKyPCxJT34HfnXS_Ko=
ENsd6WDKRct0TsItd4_dk4xBZEWrwNqes0pfV_RJzJFNSWC1tJjpFk1UVK8ySaM22YoapPkrKhJ=
7xvd9EiKc-aK5WHC2syeWL5YAO5QNCrMxT9JJ-i3tvC2sZAlgAyNSx78qV7M09bkZ1k2hn5qi3j=
bvK3xggz-HHgjahAsx6zRH86NZDIoSe5_4tc6c0UeE03mYMgALuwY1kwoZr7b8-EjaFkvZRoF8m=
CGzGXTKfyvJuFHID1yA/http%3A%2F%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusr=
p-users_lists.ettus.com</a><br>
<br>
</blockquote></div></div></div>
</blockquote></div>

--0000000000001907ed05b47c0fea--


--===============0421924874225571992==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0421924874225571992==--

