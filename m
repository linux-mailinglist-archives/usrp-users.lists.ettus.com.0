Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 789862E2418
	for <lists+usrp-users@lfdr.de>; Thu, 24 Dec 2020 04:41:32 +0100 (CET)
Received: from [::1] (port=42362 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ksHVK-0000ua-13; Wed, 23 Dec 2020 22:41:30 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:46105)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1ksHVG-0000mU-5M
 for usrp-users@lists.ettus.com; Wed, 23 Dec 2020 22:41:26 -0500
Received: by mail-oi1-f179.google.com with SMTP id q205so1209266oig.13
 for <usrp-users@lists.ettus.com>; Wed, 23 Dec 2020 19:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C0573E1wYQFJ8/lVBjHIgptYsm8EX3F5KziAFXTaDSA=;
 b=iVKpOE1nGQu0gyjXULDa7c8P/tXKqV3U9kO1Sh+ir5UdaQw8yLLCowYbyu7uIGrG/C
 ykjaGRarXjzXp4AAUiY1G9t2qYj8xXtc2fe3zSWoSaEnK8C+h3IygOIgj3wj8BQRa8bt
 11aY+2dDkX3x5dRvs62N/HtDIMbU81p9sReKgGJYq0ncDgDUNh1h7MSwV9mulcpQI89l
 9me9XkDqvGfW/3e2XdJedReDqu4sqZonqSgUBXVaZqgh5SVt1Duvs5xtAtUca7g6Zkvf
 SEVwj331X30AgQCRy/VZ1BG1jOXhGgEHSM7V4rstEuLo2jeD3J8YIMR+9QQfJBGX0zBk
 ILVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C0573E1wYQFJ8/lVBjHIgptYsm8EX3F5KziAFXTaDSA=;
 b=tPQhMajqHjmZzmcYYXvTmV9j1VAs7PTHu6SpiHy/Nwy1XQs3a5/M0oJ6+ZM1E6eWSH
 5xuT6QSBf5b6RWGGPxVne5bm1xSKAsuN09NiJqat0gPwXfBIUUBkM2k7WvKFVHuczPJo
 SbLDow/uIkyDuXwFEzDhwF8TA02rWFwvqZbZB4f65k4qvcGWDBzclonpkMXzNlPlboF1
 elQXJKP33kq/IdAcbQGNezXYNbZoeeOW5Cme6fJ3/swBOMkNZ5x+Gj0fjKe0kyhW/NDQ
 h996OmKMVNhYO+3O2c6bPaUttiJk0XzR/tjitmePU4hUQXNzlxz4JcrOXB7oYd7fpiq5
 cD6A==
X-Gm-Message-State: AOAM532h1P3h9UaCZ43iItiqTx6AHmgP3lTJvkV9Toeqkq3SObC9FTPj
 Rsdj8La/7gHBdhtyUucl8h7RWp6MOUEyioe23nP67Q==
X-Google-Smtp-Source: ABdhPJyiGHSmnYTyVhrw5vtLKctb4PfdGwm/mDuVsHT1iJ6IInLgy6oJ4R3+XVYChjIBHLFEKwXUvwn8iDF3olZ/ZzM=
X-Received: by 2002:aca:d98a:: with SMTP id q132mr1799887oig.33.1608781245158; 
 Wed, 23 Dec 2020 19:40:45 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTS8pMUdZphefQQwY7UF2SPKDqY3dGdqEKCWANB7MdQMUA@mail.gmail.com>
 <CAL7q81ugLvWSYPajAbGLDrGFbwB+v9i+DJWtsLszjCr34Y8k_Q@mail.gmail.com>
In-Reply-To: <CAL7q81ugLvWSYPajAbGLDrGFbwB+v9i+DJWtsLszjCr34Y8k_Q@mail.gmail.com>
Date: Wed, 23 Dec 2020 22:40:34 -0500
Message-ID: <CAB__hTTAe1j5mEXhdzLpD0_BNLut4uVi--dYp+LeqsBAe-LtXA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Advice sought for custom FFT/Window RFNoC block
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5812158595789753325=="
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

--===============5812158595789753325==
Content-Type: multipart/alternative; boundary="000000000000a3d1a405b72d92b0"

--000000000000a3d1a405b72d92b0
Content-Type: text/plain; charset="UTF-8"

Hi Jonathan,
I have another "pulse detector" block which sits in front of the FFT block
and provides a single burst of samples for each pulse detected in the
incoming continuous stream.  The FFT block is supposed to reject any burst
with length < FFT length.

In order to test my blocks, I have an rfnoc graph that corresponds to a
2-channel pulse detector (which should keep/discard samples on both
channels identically) feeding 2 FFT blocks.  Thus, essentially
Host=>pulsedetect=>fft=>Host, but with 2 channels.  If I test this graph
using my a raw data set that I have stored on my drive, something freezes
up after about the 4th burst and I'm wondering if it is the FFT block but
don't really know.  All I know is that my UHD recv() function times out
first and then the send() times out because no data is flowing.  I know
from testing the pulsedetect block alone, that the first several sample
bursts are of length (1854, 1439, 1336, 1108, 2709, 709, ....).  My FFT is
length 1024 and I receive 4 bursts of 1024 samples before things seize up.

I also know that if I test the FFT block in isolation using my entire raw
data set as a single continuous burst (>1Msample), the FFT block works as
expected.

Anyway, if you have any ideas on my specific issue or if you have ideas on
how you would attack the issue in general (of a generic pulse detector
feeding an FFT block (of length > 4096) and handling partial packets), let
me know.
Rob


On Wed, Dec 23, 2020 at 10:15 PM Jonathon Pendlum <
jonathon.pendlum@ettus.com> wrote:

> Hey Rob,
>
> I haven't thought of using axi_rate_change in this way, but I think it
> should work fine. What issues are you seeing?
>
> Jonathon
>
> On Wed, Dec 23, 2020, 21:51 Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> I created an RFNoC block (4.0) with both windowing and a Xilinx FFT IP
>> core. In order to address the issue of partial packets arriving (or packets
>> less than the FFT size of 4096 or higher), I added the axi_rate_change
>> module (after looking for all options). Even though my block does not
>> change rate, the axi_rate_change is convenient because it automatically
>> drops partial packets and handles the header for you in the event of
>> dropping partial packets. In my UHD block controller, I just set the M/N
>> registers the same since the rate doesn't change.
>>
>> In any case, I am seeing some unexpected issues and now I'm questioning
>> whether or not using the axi_rate_change block for this use case is a good
>> idea.  Any comments/advice would be appreciated.
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000a3d1a405b72d92b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathan,<div>I have another &quot;pulse detector&quot;=
 block which sits in front of the FFT block and provides a single burst of =
samples for each pulse detected in the incoming continuous stream.=C2=A0 Th=
e FFT block is supposed to reject any burst with length &lt; FFT length.<di=
v><br></div><div>In order to test my blocks, I have an rfnoc graph that cor=
responds to a 2-channel pulse detector (which should keep/discard samples o=
n both channels identically) feeding 2 FFT blocks.=C2=A0 Thus, essentially =
Host=3D&gt;pulsedetect=3D&gt;fft=3D&gt;Host, but with 2 channels.=C2=A0 If =
I test this graph using my a raw data set that I have stored on my drive, s=
omething freezes up after about the 4th burst and I&#39;m wondering if it i=
s the FFT block but don&#39;t really know.=C2=A0 All I know is that my UHD =
recv() function times out first and then the send() times out because no da=
ta is flowing.=C2=A0 I know from testing the pulsedetect block alone, that =
the first several sample bursts are of length (1854, 1439, 1336, 1108, 2709=
, 709, ....).=C2=A0 My FFT is length 1024 and I receive 4 bursts of 1024 sa=
mples before things seize up.</div><div><br></div><div>I also know that if =
I test the FFT block in isolation using my entire raw data set as a single =
continuous burst (&gt;1Msample), the FFT block works as expected.</div><div=
><br></div><div>Anyway, if you have any ideas on my specific issue or if yo=
u have ideas on how you would attack the issue in general (of a generic pul=
se detector feeding an FFT block (of length &gt; 4096) and handling partial=
 packets), let me know.</div><div>Rob</div><div><br></div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec=
 23, 2020 at 10:15 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendl=
um@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hey Rob,<div dir=
=3D"auto"><br></div><div dir=3D"auto">I haven&#39;t thought of using axi_ra=
te_change in this way, but I think it should work fine. What issues are you=
 seeing?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Dec 23, 2020, 21:51 Rob Kossler via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi,<br><div>I created an RFNoC block (4.0) with both windowi=
ng and a Xilinx FFT IP core. In order to address the issue of partial packe=
ts arriving (or packets less than the FFT size of 4096 or higher), I added =
the axi_rate_change module (after looking for all options). Even though my =
block does not change rate, the axi_rate_change is convenient because it au=
tomatically drops partial packets and handles the header for you in=C2=A0th=
e event of dropping partial packets. In my UHD block controller, I just set=
 the M/N registers the same since the rate doesn&#39;t change.</div><div><b=
r></div><div>In any case, I am seeing some unexpected issues and now I&#39;=
m questioning whether or not using the axi_rate_change block for this use c=
ase is a good idea.=C2=A0 Any comments/advice would be appreciated.</div><d=
iv>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000a3d1a405b72d92b0--


--===============5812158595789753325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5812158595789753325==--

