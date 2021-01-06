Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4922EC68E
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jan 2021 00:11:16 +0100 (CET)
Received: from [::1] (port=36336 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxHxR-0006WJ-9b; Wed, 06 Jan 2021 18:11:13 -0500
Received: from mail-oi1-f171.google.com ([209.85.167.171]:45154)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kxHxN-0006Sa-6y
 for usrp-users@lists.ettus.com; Wed, 06 Jan 2021 18:11:09 -0500
Received: by mail-oi1-f171.google.com with SMTP id f132so5275444oib.12
 for <usrp-users@lists.ettus.com>; Wed, 06 Jan 2021 15:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=szAPuwdmUWdAETts55hCccmg5y71U3rs3BwCSxBc/zM=;
 b=MMEVwDfyLOmB1Ux/UNacjPbiHgZzSVcXtfAfQUta3oj59Y4ZCjAEEOnS7RNeBilvfd
 AuvA2CYGYaYdjM54vVG4UJMPfwuNxXBY9NcfPdqrw1PYyWUUlE1pLstFx+CL7r/JHhBA
 ZLTSAM/j/n6k2o7XNmMf4jOQcwtxqDdhNqYM1+1Y1xMq8WSkZVu3zlHQOGf06PJHt/Ns
 RjGTZBtfxr3cE8H8VLp1vWCNmHb1R6j4cDox44htbPMni9R7JJjDvg60tacDorq2KUTw
 cD3Srm1eraqHXibLYR1EG7PazN+Gs1DQANK9IUf6cfjci1iML0ey5ztBL+aPvN9R4kJL
 MlOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=szAPuwdmUWdAETts55hCccmg5y71U3rs3BwCSxBc/zM=;
 b=KTyif057f83csVQYqn0Jd1u2v5WvL7Afudfupo+S+Q2dP2lXU5kPkc/EEfIskGkNzX
 jdRrUSRMFCbVq8DoyQ4TxC50sKzOsBcIhdF2SqSyw2EaMJidkbDJqebABKFsDGOGwK6s
 5C08qADi7lgzILy96281h8F+hRI0z6EN9vEf0B/bkDVNK1dRWboSt1w+d+jch0jq3HJT
 Sbbtn4hx3PJQPmlTtR7357XjkqdHXW8NoOoqLBc7Zpy2NY7tX+9oyx5LnPMCIxUD1eui
 HIMzlVEIMYPjIndXEGHsTKrdE+e9HWxxeHPnUT4eXp8hMVuBE/QLw2aSVTgZ/0WoNPhX
 PxfA==
X-Gm-Message-State: AOAM530sqzdwjuiVZECHH8Rj7VKeTVQHZQGyKDK8zfafUMlAuQM3og6e
 jCl840GZhNzCFrNl0S0Up0/K/5yIZevaD5XC13CDwg==
X-Google-Smtp-Source: ABdhPJye+E4NXMNpy+vKzecnZmjlzH5/Sa8Gbvz4CCCOX+nR+jH6+Y+tISUGrLCK5rDpQw2MtdqDivjlyjDh9afSISI=
X-Received: by 2002:a05:6808:9a:: with SMTP id
 s26mr4756251oic.124.1609974628168; 
 Wed, 06 Jan 2021 15:10:28 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTS8pMUdZphefQQwY7UF2SPKDqY3dGdqEKCWANB7MdQMUA@mail.gmail.com>
 <CAL7q81ugLvWSYPajAbGLDrGFbwB+v9i+DJWtsLszjCr34Y8k_Q@mail.gmail.com>
 <CAB__hTTAe1j5mEXhdzLpD0_BNLut4uVi--dYp+LeqsBAe-LtXA@mail.gmail.com>
In-Reply-To: <CAB__hTTAe1j5mEXhdzLpD0_BNLut4uVi--dYp+LeqsBAe-LtXA@mail.gmail.com>
Date: Wed, 6 Jan 2021 18:10:17 -0500
Message-ID: <CAB__hTRvXyNbD6HZPK1QdFnzYP-3fdT+ruRLTBsEyK76_90G6A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2587859869240892813=="
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

--===============2587859869240892813==
Content-Type: multipart/alternative; boundary="000000000000cf83a105b8436dec"

--000000000000cf83a105b8436dec
Content-Type: text/plain; charset="UTF-8"

Hi Jonathon,
I have finally narrowed my issue down a bit.  I am able to get streaming to
lock up in a testbench when using axi_rate_change in the manner I
previously described (see original email at bottom).  I am seeing the issue
whenever I send a burst that is less than a user-packet of length N (also
M).  So, for example, if M and N are set to 256, I don't seem to have a
problem as long as all bursts are at least 256 samples long.  The final
partial packet seems to be handled correctly. But, if I send a packet that
is less than 256 (which I expect to be discarded since it is a partial), I
seem to encounter streaming issues with subsequent bursts.

I say "seem" because I still have not gotten to the root of the issue. I
have demonstrated the issue by sending alternating bursts of 51 samps and
then 4 samps with M/N set to 16.  In this case, I receive 3 packets of 16
from the first burst of 35 samps (this is correct) and then I receive 2
additional packets of 16 before streaming locks up.  The streaming seems to
lock up on the final packet of the burst that follows the short burst (4
samps).  If I change the order of bursts such that the short burst is first
(i.e., 4, 51, 4, 51, ...), I receive 2 packets of 16 before streaming locks
up. This also supports the theory that streaming locks up on the final
packet of a long burst which follows a short burst.

I plan to create a new RFNoC block that simply has the axi_rate_change with
assignment statements to assign inputs to outputs (i.e., without my
windowing or fft functionality). I'm wondering if you have any ideas on
what might be wrong with axi_rate_change (assuming of course that there is
something wrong).
Rob

On Wed, Dec 23, 2020 at 10:40 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Jonathan,
> I have another "pulse detector" block which sits in front of the FFT block
> and provides a single burst of samples for each pulse detected in the
> incoming continuous stream.  The FFT block is supposed to reject any burst
> with length < FFT length.
>
> In order to test my blocks, I have an rfnoc graph that corresponds to a
> 2-channel pulse detector (which should keep/discard samples on both
> channels identically) feeding 2 FFT blocks.  Thus, essentially
> Host=>pulsedetect=>fft=>Host, but with 2 channels.  If I test this graph
> using my a raw data set that I have stored on my drive, something freezes
> up after about the 4th burst and I'm wondering if it is the FFT block but
> don't really know.  All I know is that my UHD recv() function times out
> first and then the send() times out because no data is flowing.  I know
> from testing the pulsedetect block alone, that the first several sample
> bursts are of length (1854, 1439, 1336, 1108, 2709, 709, ....).  My FFT is
> length 1024 and I receive 4 bursts of 1024 samples before things seize up.
>
> I also know that if I test the FFT block in isolation using my entire raw
> data set as a single continuous burst (>1Msample), the FFT block works as
> expected.
>
> Anyway, if you have any ideas on my specific issue or if you have ideas on
> how you would attack the issue in general (of a generic pulse detector
> feeding an FFT block (of length > 4096) and handling partial packets), let
> me know.
> Rob
>
>
> On Wed, Dec 23, 2020 at 10:15 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hey Rob,
>>
>> I haven't thought of using axi_rate_change in this way, but I think it
>> should work fine. What issues are you seeing?
>>
>> Jonathon
>>
>> On Wed, Dec 23, 2020, 21:51 Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I created an RFNoC block (4.0) with both windowing and a Xilinx FFT IP
>>> core. In order to address the issue of partial packets arriving (or packets
>>> less than the FFT size of 4096 or higher), I added the axi_rate_change
>>> module (after looking for all options). Even though my block does not
>>> change rate, the axi_rate_change is convenient because it automatically
>>> drops partial packets and handles the header for you in the event of
>>> dropping partial packets. In my UHD block controller, I just set the M/N
>>> registers the same since the rate doesn't change.
>>>
>>> In any case, I am seeing some unexpected issues and now I'm questioning
>>> whether or not using the axi_rate_change block for this use case is a good
>>> idea.  Any comments/advice would be appreciated.
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000cf83a105b8436dec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Jonathon,<div>I have finally narrowed =
my issue down a bit.=C2=A0 I am able to get streaming to lock up in a testb=
ench when using axi_rate_change in the manner I previously described (see o=
riginal email at bottom).=C2=A0 I am seeing the issue whenever I send a bur=
st that is less than a user-packet of length N (also M).=C2=A0 So, for exam=
ple, if M and N are set to 256, I don&#39;t seem to have a problem as long =
as all bursts are at least 256 samples long.=C2=A0 The final partial packet=
 seems to be handled correctly. But, if I send a packet that is less than 2=
56 (which I expect to be discarded since it is a partial), I seem to encoun=
ter streaming issues with subsequent bursts.</div><div><br></div><div>I say=
 &quot;seem&quot; because I still have not gotten to the root of the issue.=
 I have demonstrated the issue by sending alternating bursts of 51 samps an=
d then 4 samps with M/N set to 16.=C2=A0 In this case, I receive 3 packets =
of 16 from the first burst of 35 samps (this is correct) and then I receive=
 2 additional packets of 16 before streaming locks up.=C2=A0 The streaming =
seems to lock up on the final packet of the burst that follows the short bu=
rst (4 samps).=C2=A0 If I change the order of bursts such that the short bu=
rst is first (i.e., 4, 51, 4, 51, ...), I receive 2 packets of 16 before st=
reaming locks up. This also supports the theory that streaming locks up on =
the final packet of a long burst which follows a short burst.</div><div><br=
></div><div>I plan to create a new RFNoC block that simply has the axi_rate=
_change with assignment statements to assign inputs to outputs (i.e., witho=
ut my windowing or fft=C2=A0functionality). I&#39;m wondering if you have a=
ny ideas on what might be wrong with axi_rate_change (assuming of course th=
at there is something wrong).</div><div>Rob</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 23, 2020 at 10=
:40 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi Jonathan,<div>I have another &quot;pulse detector&quot; b=
lock which sits in front of the FFT block and provides a single burst of sa=
mples for each pulse detected in the incoming continuous stream.=C2=A0 The =
FFT block is supposed to reject any burst with length &lt; FFT length.<div>=
<br></div><div>In order to test my blocks, I have an rfnoc graph that corre=
sponds to a 2-channel pulse detector (which should keep/discard samples on =
both channels identically) feeding 2 FFT blocks.=C2=A0 Thus, essentially Ho=
st=3D&gt;pulsedetect=3D&gt;fft=3D&gt;Host, but with 2 channels.=C2=A0 If I =
test this graph using my a raw data set that I have stored on my drive, som=
ething freezes up after about the 4th burst and I&#39;m wondering if it is =
the FFT block but don&#39;t really know.=C2=A0 All I know is that my UHD re=
cv() function times out first and then the send() times out because no data=
 is flowing.=C2=A0 I know from testing the pulsedetect block alone, that th=
e first several sample bursts are of length (1854, 1439, 1336, 1108, 2709, =
709, ....).=C2=A0 My FFT is length 1024 and I receive 4 bursts of 1024 samp=
les before things seize up.</div><div><br></div><div>I also know that if I =
test the FFT block in isolation using my entire raw data set as a single co=
ntinuous burst (&gt;1Msample), the FFT block works as expected.</div><div><=
br></div><div>Anyway, if you have any ideas on my specific issue or if you =
have ideas on how you would attack the issue in general (of a generic pulse=
 detector feeding an FFT block (of length &gt; 4096) and handling partial p=
ackets), let me know.</div><div>Rob</div><div><br></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Dec 2=
3, 2020 at 10:15 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pendlum=
@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">H=
ey Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">I haven&#39;t thought =
of using axi_rate_change in this way, but I think it should work fine. What=
 issues are you seeing?</div><div dir=3D"auto"><br></div><div dir=3D"auto">=
Jonathon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Dec 23, 2020, 21:51 Rob Kossler via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Hi,<br><div>I created an RFNoC block (4.0) =
with both windowing and a Xilinx FFT IP core. In order to address the issue=
 of partial packets arriving (or packets less than the FFT size of 4096 or =
higher), I added the axi_rate_change module (after looking for all options)=
. Even though my block does not change rate, the axi_rate_change is conveni=
ent because it automatically drops partial packets and handles the header f=
or you in=C2=A0the event of dropping partial packets. In my UHD block contr=
oller, I just set the M/N registers the same since the rate doesn&#39;t cha=
nge.</div><div><br></div><div>In any case, I am seeing some unexpected issu=
es and now I&#39;m questioning whether or not using the axi_rate_change blo=
ck for this use case is a good idea.=C2=A0 Any comments/advice would be app=
reciated.</div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer" target=3D"=
_blank">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>

--000000000000cf83a105b8436dec--


--===============2587859869240892813==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2587859869240892813==--

