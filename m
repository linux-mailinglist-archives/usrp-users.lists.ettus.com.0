Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 973FA326889
	for <lists+usrp-users@lfdr.de>; Fri, 26 Feb 2021 21:34:37 +0100 (CET)
Received: from [::1] (port=47198 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lFjon-0000bg-DL; Fri, 26 Feb 2021 15:34:33 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:45159)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lFjoj-0000UJ-Ia
 for usrp-users@lists.ettus.com; Fri, 26 Feb 2021 15:34:29 -0500
Received: by mail-ot1-f48.google.com with SMTP id d9so10238227ote.12
 for <usrp-users@lists.ettus.com>; Fri, 26 Feb 2021 12:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gHlpfHYzOW77juBetjFxxWEqkTlnyL98l86x8rAyP+c=;
 b=HKIgFsgBxDa+nIcGI4JiZ35u6fu/kEqWdQUGv+ci6KW8siMAKj8tnaYymaLUCxj80c
 /j3CRlzF1mOiZofJtsu+CGyG0exGIjvcuSpftetrukaJqhHZYGaGvptjkvN6qHZzpprZ
 HSPlP4r6PGTB+qP4g6F5IR97FKM3irmfoE9rU/Wu2qfHmpSE7nGarybjKHhlBoX/WtIV
 MaZJUDxPB4RXK+9+waHQOr7PRSHReb0zBZwJode88xZMf2a+dT5cbg9DIwgAXNYhWQ6d
 vueOjTqKBWBNuhH1Mt/c4OUkT4AEs5kOLRdeVgBFDqGAN/li/T+CIXrxU5NOWPYEfTE2
 snYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gHlpfHYzOW77juBetjFxxWEqkTlnyL98l86x8rAyP+c=;
 b=MgYCzvHFXOxvH5bfbOR9VpcNWegQvLvGDTymAv36EGwvSB+Qjw/7LPIU+RfiyG7z5O
 5LRoeRq21UKR0QW66NjsjuvuocDNRSj7YjZAZ1cQDdnSNEqgwvMJ1jP13UqzK9ix80mX
 C3vc13diXpiHNyDyNI6wJBQLauW7VeUC1wt1floucxLIYqlkoWkjUdf+yh/TbK2IWH2H
 hfU6gmYBbjbFcl1FpYxSWmvqQ9TaUw9Kw1YzO0QXJ2BgpymjDAiZCnDwJnZpWb7uCwsi
 vYDX29wv7Bay33fMNli7ToTd5YM7dJyaNsxUBLny7d4xEJgIm3Xq6waIw6XoryrUPlVR
 ovew==
X-Gm-Message-State: AOAM532ruTF9GymCAXToPx34IqoLHmFIKCeYMiGV0/ouMa6eGVf1K7is
 MYK7AFaU77V0cKuiwlMVSlmioRufAQnZcJbNagu9VA==
X-Google-Smtp-Source: ABdhPJyvFa25SkNO4HwtOgvmAfcAz4hGksp6aJ5Bpp4pRBcfY86dh5atUbx9rL4dagwUS+ryBYZLec580bB7hoZZaf0=
X-Received: by 2002:a9d:5503:: with SMTP id l3mr3755916oth.302.1614371628552; 
 Fri, 26 Feb 2021 12:33:48 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTepTD=OzJDHNV_ve7WdKiEYHcx-NsZ1G1cQX65YJ92Qw@mail.gmail.com>
 <CAFche=h2sTRnzufr4J4G5fVZ=v9S-7duS4-xZjsLAdp1Q_ZrYg@mail.gmail.com>
In-Reply-To: <CAFche=h2sTRnzufr4J4G5fVZ=v9S-7duS4-xZjsLAdp1Q_ZrYg@mail.gmail.com>
Date: Fri, 26 Feb 2021 15:33:37 -0500
Message-ID: <CAB__hTRWW-vJT6o1gkXwQVOzqqkixCCrmQ1MhLApa5VjXYW8rw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] rfnoc architecture suggestions
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
Content-Type: multipart/mixed; boundary="===============8582188309350977125=="
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

--===============8582188309350977125==
Content-Type: multipart/alternative; boundary="00000000000074d74605bc432f93"

--00000000000074d74605bc432f93
Content-Type: text/plain; charset="UTF-8"

I have one additional suggestion, but it is somewhat related to my other
suggestion about alleviating the user's need to care about packet lengths.
In order to illustrate, consider the Ettus FFT RFNoC block.  For this block
to function properly, we pretty much need to guarantee that the incoming
packet length matches the FFT size.  Otherwise partial packets end up stuck
in the FFT input. So, the way it stands presently, the user must do the
following when using the FFT block:

   - Set the Radio SPP equal to the FFT size.
   - Include the DDC. If the user does not include the DDC, then the final
   radio packet will likely be a partial packet and thus will get stuck in the
   FFT input
   - Stick to FFT sizes that are within the range of allowable packet sizes

When I realized this, I realized that the "key" was the "axi_rate_change"
module used by the DDC.  In addition to its primary function of handling
rate change stuff, this module ensures that the user logic never receives
partial packets. Thus, I decided to incorporate it into my own FFT-based
RFNoC block directly such that (A) I wouldn't need to have the DDC, (B) I
wouldn't need to set the radio SPP, and (C) I could use FFT sizes as large
as I want (independent of packet sizes limited by MTU considerations).

While this seems to work fine for me, it is a little bit strange using a
"rate_change" module for an RFNoC block that is not actually changing rate.
It is simply convenient because of its discarding of partial packets and
its automatic handling of the header info (alleviating this requirement
from the actual user logic). And, the other odd thing about using this rate
change module is the fact that the module still uses axi settings regs and
thus causes me to use that style in my rfnoc block.

So, after all that discussion, my suggestion is to provide additional
functionality for automatic handling of context information and packetizing
along the lines of "axi_rate_change" and/or functionality from the old
"axi_wrapper" (although the custom noc_shell replaces some of the
functionality from "axi_wrapper", it does not provide replacement
functionality for all "axi_wrapper" capabilities). Perhaps it would be
possible to include such functionality as options in the custom noc_shell.
Rob

On Fri, Feb 26, 2021 at 2:23 PM Wade Fife <wade.fife@ettus.com> wrote:

> Rob,
>
> Thanks for the feedback! I like your suggestions. In fact, the bypass
> option is one that we've discussed a few times, since it would be very
> useful for debug and would allow some blocks to be statically routed that
> currently use the crossbar. We definitely want to make things easier for
> users. Please continue to share suggestions you have.
>
> Thanks!
>
> Wade
>
> On Fri, Feb 26, 2021 at 10:08 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> While I am a big fan of the architectural changes to RFNoC with the
>> release of UHD 4.0, I have a couple of suggestions for improvement. I am
>> admittedly a novice FPGA developer so it's certainly possible that these
>> suggestions are "easier said than done" or poor choices for other reasons.
>> But, that won't stop me from suggesting them...
>>
>>    - Remove to a greater extent the requirement for user logic to "care"
>>    about packet lengths.  In many cases, the user logic does not care about
>>    packet lengths and MTU sizes and such.  For example, if I am writing a
>>    signal generator that is feeding a DUC/Radio, I may care about a time stamp
>>    and EOB, but I simply do not care about RFNoC packet sizes. This is true in
>>    several custom blocks I have written.  However, in the current RFNoc
>>    architecture, I am forced to care about them. At a minimum, I must set
>>    tlast and depending upon the context model I choose, I may also have to
>>    make sure that my context payload length matches this. It seems to me that
>>    the custom noc_shell could be tweaked further to alleviate this burden for
>>    more use cases.
>>    - Provide an automatic "bypass" mode (or an option to enable this in
>>    the block yml) in the custom noc_shell. I am talking about a capability
>>    that would allow the user to bypass user logic by setting a register such
>>    that the custom block would become a "thru" block.  While I recognize that
>>    this functionality is not appropriate to all blocks (e.g., 2 input, 3
>>    output), there are a large number of blocks for which this would be
>>    helpful.  Given the new capability for static routing, this would allow the
>>    user to bypass a statically routed block. And, while I could certainly
>>    implement such logic in all of my custom blocks, it would be more useful if
>>    this were standard across all blocks including Ettus blocks such as DDC &
>>    DUC.
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--00000000000074d74605bc432f93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have one additional suggestion, but it is somewhat =
related to my other suggestion about alleviating the user&#39;s need to car=
e about packet lengths.=C2=A0 In order to illustrate, consider the Ettus FF=
T RFNoC block.=C2=A0 For this block to function properly, we pretty much ne=
ed to guarantee that the incoming packet length matches the FFT size.=C2=A0=
 Otherwise partial packets end up stuck in the FFT input. So, the way it st=
ands presently, the user must do the following when using the FFT block:</d=
iv><div><ul><li>Set the Radio SPP equal to the FFT size.</li><li>Include th=
e DDC. If the user does not include the DDC, then the final radio packet wi=
ll likely be a partial packet and thus will get stuck in the FFT input</li>=
<li>Stick to FFT sizes that are within the range of allowable packet sizes<=
/li></ul><div>When I realized this, I realized that the &quot;key&quot; was=
 the &quot;axi_rate_change&quot; module used by the DDC.=C2=A0 In addition =
to its primary function of handling rate change stuff, this module ensures =
that the user logic never receives partial packets. Thus, I decided to inco=
rporate it into my own FFT-based RFNoC block directly such that (A) I would=
n&#39;t need to have the DDC, (B) I wouldn&#39;t need to set the radio SPP,=
 and (C) I could use FFT sizes as large as I want (independent of packet si=
zes limited by MTU considerations).</div></div><div><br></div><div>While th=
is seems to work fine for me, it is a little bit strange using a &quot;rate=
_change&quot; module for an RFNoC block that is not actually changing rate.=
 It is simply convenient because of its discarding of partial packets and i=
ts automatic handling of the header info (alleviating this requirement from=
 the actual user logic). And, the other odd thing about using this rate cha=
nge module is the fact that the module still uses axi settings regs and thu=
s causes me to use that style in my rfnoc block.</div><div><br></div><div>S=
o, after all that discussion, my suggestion is to provide additional functi=
onality for automatic handling of context information and packetizing along=
 the lines of &quot;axi_rate_change&quot; and/or functionality from the old=
 &quot;axi_wrapper&quot; (although the custom noc_shell replaces some of th=
e functionality from &quot;axi_wrapper&quot;, it does not provide replaceme=
nt functionality for all &quot;axi_wrapper&quot; capabilities). Perhaps it =
would be possible to include such functionality as options in the custom no=
c_shell.</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Feb 26, 2021 at 2:23 PM Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div>Rob,</div><div><br></div><div>Thanks for the feedback! I li=
ke your suggestions. In fact, the bypass option is one that we&#39;ve discu=
ssed a few times, since it would be very useful for debug and would allow s=
ome blocks to be statically routed that currently use the crossbar. We defi=
nitely want to make things easier for users. Please continue to share sugge=
stions you have.<br></div><div><br></div><div>Thanks!</div><div><br></div><=
div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Fri, Feb 26, 2021 at 10:08 AM Rob Kossler via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">While I am a big fan of the architec=
tural changes to RFNoC with the release of UHD 4.0, I have a couple of sugg=
estions for improvement. I am admittedly a novice FPGA developer so it&#39;=
s certainly possible that these suggestions are &quot;easier said than done=
&quot; or poor choices for other reasons. But, that won&#39;t stop me from =
suggesting them...<div><ul><li>Remove to a greater extent the requirement f=
or user logic to &quot;care&quot; about packet lengths.=C2=A0 In many cases=
, the user logic does not care about packet lengths and MTU sizes and such.=
=C2=A0 For example, if I am writing a signal generator that is feeding a DU=
C/Radio, I may care about a time stamp and EOB, but I simply do not care ab=
out RFNoC packet sizes. This is true in several custom blocks I have writte=
n.=C2=A0 However, in the current RFNoc architecture, I am forced to care ab=
out them. At a minimum, I must set tlast and depending upon the context mod=
el I choose, I may also have to make sure that my context payload length ma=
tches this. It seems to me that the custom noc_shell could be tweaked furth=
er to alleviate this burden for more use cases.</li><li>Provide an automati=
c &quot;bypass&quot; mode (or an option to enable this in the block yml) in=
 the custom noc_shell. I am talking about a capability that would allow the=
 user to bypass user logic by setting a register such that the custom block=
 would become a &quot;thru&quot; block.=C2=A0 While I recognize that this f=
unctionality is not appropriate to all blocks (e.g., 2 input, 3 output), th=
ere are a large number of blocks for which this would be helpful.=C2=A0 Giv=
en the new capability for static routing, this would allow the user to bypa=
ss a statically routed block. And, while I could certainly implement such l=
ogic in all of my custom blocks, it would be more useful if this were stand=
ard across all blocks including Ettus blocks such as DDC &amp; DUC.</li></u=
l><div>Rob</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--00000000000074d74605bc432f93--


--===============8582188309350977125==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8582188309350977125==--

