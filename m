Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CB8212CD0
	for <lists+usrp-users@lfdr.de>; Thu,  2 Jul 2020 21:11:13 +0200 (CEST)
Received: from [::1] (port=36830 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jr4c4-0006u2-M5; Thu, 02 Jul 2020 15:11:12 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:36826)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bpadalino@gmail.com>) id 1jr4c0-0006mu-NJ
 for usrp-users@lists.ettus.com; Thu, 02 Jul 2020 15:11:08 -0400
Received: by mail-oi1-f172.google.com with SMTP id h17so24564924oie.3
 for <usrp-users@lists.ettus.com>; Thu, 02 Jul 2020 12:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YpYZdfw/jyNZ4Szg/xvWbjKQC7iDttCR2yInp/5bIWI=;
 b=rKDXIT6b01tyijn3ndfX04zIBusw2M2oqqvLr1RIiS/eoXPkmvvgNK1tdgAk9/Wkva
 jtll1ciPYhVLPYREXDKS6S1tZyO3MqIP5TbGWSj5xOlhuPpnO/C78YE2iF7XSuRV5Td4
 pzkqhTnMa7+7tUlIJlLB32J97juqrTaV+NSBqlr9G6Lt0AwtfidOhIUbm7OQ8cg/DKSs
 swQVnnvjvw9o40b/Y8Dv8qLfSLQ2AJVLtWGlqjqmlu9mpuCOoWIybTgWVBwgK5jXYaLW
 deNxaLEGiPqYqFE/+nqfe99i2LWwy2Ytyfau93RhAQk32PjLF9wKyq5hLS3ji6oqXBJ9
 Ht3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YpYZdfw/jyNZ4Szg/xvWbjKQC7iDttCR2yInp/5bIWI=;
 b=UjjYDwHyqcYxnqHWblsBAFK3M3fPC0aQuAOCPOnsplhFUbZg+IF1dTsPkvjjqz6mT+
 fr3BipkJHl6uXZ+Y0GbgG71j/8e2aC8yD5ENw7CPK55BxZcdydnQvorEUn58ocx68vAT
 66ILxY6pCV87qWGq7Ku8XZlP4int6HioY/BUNdc8qXwNqqeNqeeY3K+npiKkL+H2EFuQ
 eRo4CuCOa6UiNCnJX0lQOFb47dfMpl+8RzUqBemslLemiDmlg9SW7tKkmK+OPIDRE1no
 7CcKaqXk/jsfbxZTujbtt5qfJMG+zBjyPWZM2AZ1VCJ3jDwz/+To+UsNMR1aidkkodvc
 BYzQ==
X-Gm-Message-State: AOAM533hsOHNvVSM4AerbdYKkD65sw4gbY6zTzXoHCIdJ/1ocescH8a1
 cqijVDlsNsf0mKHjiz8hDDfnvAxidyA8QObkFuE=
X-Google-Smtp-Source: ABdhPJy1uKPwsd7zX/s12QDw35hnmguQOZQMyWoHTkHzY1UoJEfAvNV7r1PWfwNc8Mti4GrSxpY6CJPEASLYfIxVNLU=
X-Received: by 2002:aca:dbd5:: with SMTP id
 s204mr15277129oig.177.1593717027867; 
 Thu, 02 Jul 2020 12:10:27 -0700 (PDT)
MIME-Version: 1.0
References: <DM6PR09MB4629191EB6B4BE961E5805AAA56D0@DM6PR09MB4629.namprd09.prod.outlook.com>
In-Reply-To: <DM6PR09MB4629191EB6B4BE961E5805AAA56D0@DM6PR09MB4629.namprd09.prod.outlook.com>
Date: Thu, 2 Jul 2020 15:10:15 -0400
Message-ID: <CAEXYVK7irHXPO8KHwxyPbQ=TonnCmwxp584ZKBqwmpoDfMxb6A@mail.gmail.com>
To: Lawrence L Elentukh <lelentukh@mitre.org>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] x300 Timeout errors on receiving continuous stream
 (w/ Redhawk SDR)
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
From: Brian Padalino via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Brian Padalino <bpadalino@gmail.com>
Content-Type: multipart/mixed; boundary="===============2772641238486951802=="
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

--===============2772641238486951802==
Content-Type: multipart/alternative; boundary="0000000000005194b905a97a29e9"

--0000000000005194b905a97a29e9
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 2, 2020 at 3:02 PM Lawrence L Elentukh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
> I am experiencing issues where the uhd::recv() function returns a series
> of unrecoverable timeout errors, I have seen similar questions on the
> mailing list but none that have been resolved or whose resolution helped
> me. The front end interfacing with the USRP connects to the device and runs
> using STREAM_MODE_START_CONTINUOUS, continually receiving samples. Then our
> codebase connects to it via redhawk's waveform connections and the redhawk
> usrp_uhd front-end pushes the samples received downstream to our receiver.
> The issue is that after a few runs of our code (which doesn't start or stop
> the stream from the redhawk frontend), I end up getting time-out errors
> from the uhd::recv() return code, and all subsequent attempts to receive
> samples see this error. Information about the system is as follows:
>
> USRP: x310
> Interface: 10GigE, with appropriate MTU and network memory configurations
> Sampling Rate: 200e6/6 (33.33MHz)
> Single channel Rx
> UHD Version: 3.15.LTS
>
> I am using the Redhawk SDR as a platform, with our own code base as a
> receiver, and am attempting to make changes to both my local copy of the
> redhawk-usrp_uhd front-end tuner component and our own code to resolve this
> issue, however all interactions with UHD are through the redhawk component
> (which can be found here:
> https://github.com/RedhawkSDR/USRP_UHD/blob/master/cpp/USRP_UHD.cpp#L1582)
>
> Things I have tried:
> * Starting/Stopping stream between receiver runs
> * Increasing receive timeout (up to 1 sec)
> * Resetting metadata between receives
> * Clearing buffers (dropping samples) when not running receiver
>
> Note: I am able to run the receiver without issue on the first few runs
> (for durations up to 20 minutes), however after 3-5 runs, all further runs
> end up reporting timeout errors.
>

This seemed to happen to me if I don't explicitly shut down the stream and
keep reading until I get timeouts or no samples received for all streams.

Does your application stop the reception of samples explicitly?  If so, do
you keep reading the samples until they timeout and return 0 samples?

Give that a shot and see if it helps.

Brian

--0000000000005194b905a97a29e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Jul 2, 2020 at 3:02 PM Lawrence L=
 Elentukh via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">=
usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-386074620554061265WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Verdana,sa=
ns-serif;color:black;background:white">Hello,</span><span style=3D"font-siz=
e:10pt;font-family:Verdana,sans-serif;color:black"><br>
<span style=3D"background:white">=C2=A0</span><br>
<span style=3D"background:white">I am experiencing issues where the uhd::re=
cv() function returns a series of unrecoverable timeout errors, I have seen=
 similar questions on the mailing list but none that have been resolved or =
whose resolution helped me. The front
 end interfacing with the USRP connects to the device and runs using STREAM=
_MODE_START_CONTINUOUS, continually receiving samples. Then our codebase co=
nnects to it via redhawk&#39;s waveform connections and the redhawk usrp_uh=
d front-end pushes=C2=A0the samples received
 downstream to our receiver. The issue is that after a few runs of our code=
 (which doesn&#39;t start or stop the stream from the redhawk frontend), I =
end up getting time-out errors from the uhd::recv() return code, and all su=
bsequent attempts to receive samples
 see this error. Information about the system is as follows:</span><br>
<br>
<span style=3D"background:white">USRP: x310</span><br>
<span style=3D"background:white">Interface: 10GigE, with appropriate MTU an=
d network memory configurations</span><br>
<span style=3D"background:white">Sampling Rate: 200e6/6 (33.33MHz)</span><b=
r>
<span style=3D"background:white">Single channel Rx<br>
UHD Version: 3.15.LTS</span><br>
<br>
<span style=3D"background:white">I am using the Redhawk SDR as a platform, =
with our own code base as a receiver, and am attempting to make changes to =
both my local copy of the redhawk-usrp_uhd front-end tuner component and ou=
r own code to resolve this issue,
 however all interactions with UHD are through the redhawk component (which=
 can be found here:=C2=A0</span></span><a href=3D"https://github.com/Redhaw=
kSDR/USRP_UHD/blob/master/cpp/USRP_UHD.cpp#L1582" target=3D"_blank"><span s=
tyle=3D"font-size:10pt;font-family:Verdana,sans-serif;color:rgb(85,26,139);=
background:white">https://github.com/RedhawkSDR/USRP_UHD/blob/master/cpp/US=
RP_UHD.cpp#L1582</span></a><span style=3D"font-size:10pt;font-family:Verdan=
a,sans-serif;color:black;background:white">)</span><span style=3D"font-size=
:10pt;font-family:Verdana,sans-serif;color:black"><br>
<br>
<span style=3D"background:white">Things I have tried:</span><br>
<span style=3D"background:white">* Starting/Stopping stream between receive=
r runs</span><br>
<span style=3D"background:white">* Increasing receive timeout (up to 1 sec)=
</span><br>
<span style=3D"background:white">* Resetting metadata between receives</spa=
n><br>
<span style=3D"background:white">* Clearing buffers (dropping samples) when=
 not running receiver</span><br>
<span style=3D"background:white">=C2=A0</span><br>
<span style=3D"background:white">Note: I am able to run the receiver withou=
t issue on the first few runs (for durations up to 20 minutes), however aft=
er 3-5 runs, all further runs end up reporting timeout errors.</span></span=
></p></div></div></blockquote><div><br></div><div>This seemed to happen to =
me if I don&#39;t explicitly shut down the stream and keep reading until I =
get timeouts or no samples received for all streams.</div><div><br></div><d=
iv>Does your application stop the reception of samples explicitly?=C2=A0 If=
 so, do you keep reading the samples until they timeout and return 0 sample=
s?</div><div><br></div><div>Give that a shot and see if it helps.</div><div=
><br></div><div>Brian</div></div></div>

--0000000000005194b905a97a29e9--


--===============2772641238486951802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2772641238486951802==--

