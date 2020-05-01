Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CFB1C19BB
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 17:38:11 +0200 (CEST)
Received: from [::1] (port=38118 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUXjp-0003JV-In; Fri, 01 May 2020 11:38:05 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:38667)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1jUXjl-0003B7-Mk
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 11:38:01 -0400
Received: by mail-oi1-f175.google.com with SMTP id r66so83808oie.5
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 08:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n6VarxnLgYyOhQnF2aHd0IUXlDMSkBzkouOEFrwsN9s=;
 b=VVgaP0PW7rgpEKPi+7Bqphqwn7wZ9GyRVxOtMjFeGve1OnOXVtCNO8Jt+WaKYJBISQ
 10cKi1LYN0b6xsasMNEiohR+iZdxn9NLvkDH5HJWPUxcvJf0oSqWS92kc+B3yoNMmQto
 trkAFJT6Ngl/zZ4CRbmL3YkItHJQnP7Sk7ATAZmCa0aS+DfHMp09RZrhJD/XWgXY+7u+
 WHPaXZukRkqwr9ltcCoCpvHvcmssV7pWKb8IcWUVXYkgPdnU+pfuvg3We209HRQ0lFm1
 1ZxMcQZ//6TAwvMX+UC71TdnTWSHbTPCrRLNFJfWq/cUQd9qmW/7BuYSZ3CUD+nOXmnr
 XkpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n6VarxnLgYyOhQnF2aHd0IUXlDMSkBzkouOEFrwsN9s=;
 b=KEb0EJslCU/O9KddU0ppSKjW0t3bL1dDCzhJkbGt4ifbrL2J2/d6RO7Z8l4kEP8l78
 p5IPZrGM5a96OrxuPpV72hhm+thZ9TDUud31Hvr5CC7EeQQzOefIkZLXtc5c8ZT1mTVc
 g2kMHFv+8j5w7K3f7WItpLL4a6orQs+vqUg+eQsy0SgpFqm2WbiUKVoFLY7M+v+cHuiy
 VBdfaIStGTf5SPuZEbVXfFfMexA+oIC8dZwDVFXmbH2aEkeXpM6aYj07vWI+SCHRzFws
 V6m80s+36tps9d3rKn2rPKmMS0fYbthkLupgvYR4O6IIUx23ZaGXzESQ5rjYiSsonOZx
 EYqQ==
X-Gm-Message-State: AGi0PubqTo3lX6bc/x/hfPKq9fTSvRfdVg4fsS1B2h5snSuq1UpGOlwq
 RXPGen4Tof0/c5B4QYLyopyOrvXlRtugjGHhFuGSUOux
X-Google-Smtp-Source: APiQypLUSaPNvTbcDqLxKOgytOIxXkZwCLyArfaYH/nDEs9mfUJfTLjDEiSITpNjTCcnDNmWZJ1NKHE2xDwSKfg4lFY=
X-Received: by 2002:aca:4b10:: with SMTP id y16mr117379oia.23.1588347441073;
 Fri, 01 May 2020 08:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
In-Reply-To: <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
Date: Fri, 1 May 2020 10:37:10 -0500
Message-ID: <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Subject: Re: [USRP-users] using 'replay' block with 'duc'
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2046534851877399897=="
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

--===============2046534851877399897==
Content-Type: multipart/alternative; boundary="00000000000001630a05a497f536"

--00000000000001630a05a497f536
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

I wanted to give you a quick update. I was able to reproduce the issue you
found. There were two problems.

First, the example you shared calls play_halt() for the replay block each
time replay is stopped. This basically stops it as soon as possible, even
if that means it can't send a final packet with EOB. The DUC needs the EOB
to start/stop cleanly or else the timestamps the DUC generates aren't
correct when the next set of data comes through.

The second problem I found is part of some known issues that are already
fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know there
was a lot of interest in the Replay block in 3.15. So once these fixes
appear, you should be able to remove the call the play_halt() and the
example will work as expected.

Thanks,

Wade

On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:

>
> Great. I forgot to mention that I was using an n310.
>
> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Hi Rob,
>>
>> Thanks for the example! I'd take a look to see if I can reproduce the
>> issue and figure out what's going on. I've been working recently on the
>> Replay block, so I'm very interested to understand what's going on.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> I am having an issue with UHD 3.15.LTS using the replay block.  When I
>>> play out my previously stored samples the first time, everything works
>>> fine.  But after stopping the first time, if I try to start playing out
>>> again, I get a whole bunch of 'Lates' and no RF output.
>>>
>>> In order to duplicate the problem with an Ettus example, I modified
>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>
>>> Next, I further modified the example to place a DUC block in between the
>>> Replay block and the Radio.  Now it duplicates the issue perfectly
>>> (modified example attached).
>>>
>>> So, perhaps I need to clear the DUC in some way when stopping the
>>> streaming??  But if so, I'm not really sure how to do so.
>>>
>>> Thanks.
>>> Rob
>>>
>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000001630a05a497f536
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>I wanted to give you=
 a quick update. I was able to reproduce the issue you found. There were tw=
o problems.</div><div><br></div><div>First, the example you shared calls pl=
ay_halt() for the replay block each time replay is stopped. This basically =
stops it as soon as possible, even if that means it can&#39;t send a final =
packet with EOB. The DUC needs the EOB to start/stop cleanly or else the ti=
mestamps the DUC generates aren&#39;t correct when the next set of data com=
es through.</div><div><br></div><div>The second problem I found is part of =
some known issues that are already fixed in UHD 4.0. I&#39;m going to add t=
hese fixes to 3.15 since I know there was a lot of interest in the Replay b=
lock in 3.15. So once these fixes appear, you should be able to remove the =
call the play_halt() and the example will work as expected.<br></div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23=
, 2020 at 9:34 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossl=
er@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><br></div><div><div dir=3D"auto">Great. I forgot to mention=
 that I was using an n310.=C2=A0</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife =
&lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettu=
s.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thanks for the =
example! I&#39;d take a look to see if I can reproduce the issue and figure=
 out what&#39;s going on. I&#39;ve been working recently on the Replay bloc=
k, so I&#39;m very interested to understand what&#39;s going on.<br></div><=
div><br></div><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br=
><div class=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USR=
P-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"=
>usrp-users@lists.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"></blockquote></=
div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr">Hi,<br><div>I am having an issue with UHD 3.15.LTS u=
sing the replay block.=C2=A0 When I play out my previously stored samples t=
he first time, everything works fine.=C2=A0 But after stopping the first ti=
me, if I try to start playing out again, I get a whole bunch of &#39;Lates&=
#39; and no RF output.</div><div><br></div><div>In order to duplicate the p=
roblem with an Ettus example, I modified &#39;replay_samples_from_file&#39;=
 to add a loop and command prompt so that the user could hit &lt;enter&gt; =
to start playing out while still using &lt;ctrl-c&gt; to stop.=C2=A0 Unfort=
unately for me, this worked fine and did not show the problem.</div><div><b=
r></div><div>Next, I further modified=C2=A0the example to place a DUC block=
 in between the Replay block and the Radio.=C2=A0 Now it duplicates the iss=
ue perfectly (modified example attached).</div><div><br></div><div>So, perh=
aps I need to clear the DUC in some way when stopping the streaming??=C2=A0=
 But if so, I&#39;m not really sure how to do so.</div><div><br></div><div>=
Thanks.</div><div>Rob</div></div></blockquote></div><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--00000000000001630a05a497f536--


--===============2046534851877399897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2046534851877399897==--

