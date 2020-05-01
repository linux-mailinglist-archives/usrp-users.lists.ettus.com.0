Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB2C1C1A54
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 18:08:59 +0200 (CEST)
Received: from [::1] (port=39408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUYDi-0001N0-9C; Fri, 01 May 2020 12:08:58 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:46185)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jUYDe-0001Bq-VV
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 12:08:55 -0400
Received: by mail-ot1-f42.google.com with SMTP id z25so2873809otq.13
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 09:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BAyVBSx0ul7W92GWwmZlwViG681nhdKPzjSWicpeLo0=;
 b=b2iUDOPpVuSAktuS0C56c+FykAiPz/qVrjan9YkNjJ0EI+3R52hoZtvIK/I6u7p6gW
 vlSH25TiFCy1lTSEa/7dDYeacJ7RkgIcvjIIZfm5hD4HVphKBGuxES3gLsL9ZYJMJl+Q
 XkeKmw4QBItJt8KNAxzsmoJbW2/9PxcSKpps4L1yuAouE2tW6NtDD89QBJc9D6YNLk3I
 g9s6W6lX5d5BkhgofwiIzHYD0hBs2oEkxh0lF0LA4XX25YpAUSlL/MhK/qJOAPPMW0iy
 DXFAp4CKDb4AibGaiM27Oi/x9uXBVvrHsr/yjl/+68ZGlwDXZZ2YWBaaJOs2c20xOiZL
 nyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BAyVBSx0ul7W92GWwmZlwViG681nhdKPzjSWicpeLo0=;
 b=WDGFuKZIHaKmQcCSS6Oik0eq2Ktn1En1ep+ML/9r3sotmOAxHaDvuzuTfIBCpYC83p
 mZ54FLEnju7C7uY8k6ZjJCoFKAx7VkvMXasB+M2HtkMRVO9xUd1JvKlCDCX+maNZrpze
 vUO17pOYRVqW1EoGDe8A+EFfhdAct9k5Bpl+WV6RHXoMDtKBEKhtUdiZ+DZ/L7mtskj1
 ZdaYaU9YL87dNOyEc6say8CZKSVJ2rN/pNixEWTmX4KycbX3nDzJkEDoYmO64NOJrR07
 wmia5yuJMw5VJ+/qRlDWUnQ5FlmnMqvwrjCXM/u/1ynLuaS2wL1l6wKWtpjasIp9l1Kx
 aVcA==
X-Gm-Message-State: AGi0Pubf270/Uwg1Fn/a3/OcTlkQS+YYkgYdHcOb+ZFJbpZ9ESedW5Ja
 GbO4LRqjfKFiCHY7H3i+0QqQtXzHMqMnnuz0GAku/ezUjsE=
X-Google-Smtp-Source: APiQypJ4GtWt2f+VG6iqf1U2oTYrDTlcK71GdDa2BSQrqtCum+HzwokvE3SEXizbCdGLI5/+cjB2Y6ybx/c3rRnPj2A=
X-Received: by 2002:a05:6830:1da1:: with SMTP id
 z1mr4179474oti.58.1588349294034; 
 Fri, 01 May 2020 09:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
 <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
In-Reply-To: <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
Date: Fri, 1 May 2020 12:08:03 -0400
Message-ID: <CAB__hTThtrgSDNDdufEEUbeKkxWijHXaiNLDJC=y2QBx1pwBWw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4532692819556725056=="
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

--===============4532692819556725056==
Content-Type: multipart/alternative; boundary="000000000000738c8505a4986396"

--000000000000738c8505a4986396
Content-Type: text/plain; charset="UTF-8"

Thanks Wade,
A few follow up questions:

   - Regarding play_halt(), it sounds like this should never used if you
   are planning to start playout again (and the replay output feeds the DUC
   input).  Is this correct?  Or perhaps there is some way to clear the DUC?
   - In the meantime, what is the correct way of using the block in my
   situation where the replay is connected to the DUC and I want to repeatedly
   start/stop streaming?  Should I just remove the play_halt() call from the
   example and just wait for the buffer to flush following the stop streaming
   command?
   - Have you seen my other issue regarding use of the Replay Block on the
   N310 such that you can't connect the 4 Replay block ports to the 4 DUC
   ports to produce 4 Tx outputs using 3.15?  There is a graph connection /
   propagation issue that does not like Replay port 2 (3rd  port) connected to
   DUC_1 port 0.

Rob

On Fri, May 1, 2020 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:

> Hi Rob,
>
> I wanted to give you a quick update. I was able to reproduce the issue you
> found. There were two problems.
>
> First, the example you shared calls play_halt() for the replay block each
> time replay is stopped. This basically stops it as soon as possible, even
> if that means it can't send a final packet with EOB. The DUC needs the EOB
> to start/stop cleanly or else the timestamps the DUC generates aren't
> correct when the next set of data comes through.
>
> The second problem I found is part of some known issues that are already
> fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know there
> was a lot of interest in the Replay block in 3.15. So once these fixes
> appear, you should be able to remove the call the play_halt() and the
> example will work as expected.
>
> Thanks,
>
> Wade
>
> On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>>
>> Great. I forgot to mention that I was using an n310.
>>
>> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> Hi Rob,
>>>
>>> Thanks for the example! I'd take a look to see if I can reproduce the
>>> issue and figure out what's going on. I've been working recently on the
>>> Replay block, so I'm very interested to understand what's going on.
>>>
>>> Thanks,
>>>
>>> Wade
>>>
>>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> I am having an issue with UHD 3.15.LTS using the replay block.  When I
>>>> play out my previously stored samples the first time, everything works
>>>> fine.  But after stopping the first time, if I try to start playing out
>>>> again, I get a whole bunch of 'Lates' and no RF output.
>>>>
>>>> In order to duplicate the problem with an Ettus example, I modified
>>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>>
>>>> Next, I further modified the example to place a DUC block in between
>>>> the Replay block and the Radio.  Now it duplicates the issue perfectly
>>>> (modified example attached).
>>>>
>>>> So, perhaps I need to clear the DUC in some way when stopping the
>>>> streaming??  But if so, I'm not really sure how to do so.
>>>>
>>>> Thanks.
>>>> Rob
>>>>
>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000738c8505a4986396
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Wade,<div>A few follow=C2=A0up questions:</div><div=
><ul><li>Regarding play_halt(), it sounds like this should never used if yo=
u are planning to start playout again (and the replay output feeds the DUC =
input).=C2=A0 Is this correct?=C2=A0 Or perhaps there is some way to clear =
the DUC?</li><li>In the meantime, what is the correct way of using the bloc=
k in my situation where the replay is connected to the DUC and I want to re=
peatedly start/stop streaming?=C2=A0 Should I just remove the play_halt() c=
all from the example and just wait for the buffer to flush following the st=
op streaming command?</li><li>Have you seen my other issue regarding use of=
 the Replay Block on the N310 such that you can&#39;t connect the 4 Replay =
block ports to the 4 DUC ports to produce 4 Tx outputs using 3.15?=C2=A0 Th=
ere is a graph connection / propagation issue that does not like Replay por=
t 2 (3rd=C2=A0 port) connected to DUC_1 port 0.</li></ul><div>Rob</div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, May 1, 2020 at 11:37 AM Wade Fife &lt;<a href=3D"mailto:wade.fife=
@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</div><div><b=
r></div><div>I wanted to give you a quick update. I was able to reproduce t=
he issue you found. There were two problems.</div><div><br></div><div>First=
, the example you shared calls play_halt() for the replay block each time r=
eplay is stopped. This basically stops it as soon as possible, even if that=
 means it can&#39;t send a final packet with EOB. The DUC needs the EOB to =
start/stop cleanly or else the timestamps the DUC generates aren&#39;t corr=
ect when the next set of data comes through.</div><div><br></div><div>The s=
econd problem I found is part of some known issues that are already fixed i=
n UHD 4.0. I&#39;m going to add these fixes to 3.15 since I know there was =
a lot of interest in the Replay block in 3.15. So once these fixes appear, =
you should be able to remove the call the play_halt() and the example will =
work as expected.<br></div><div><br></div><div>Thanks,</div><div><br></div>=
<div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler &lt;<a href=
=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><br></div=
><div><div dir=3D"auto">Great. I forgot to mention that I was using an n310=
.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife &lt;<a href=3D"mailto:wad=
e.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v>Hi Rob,</div><div><br></div><div>Thanks for the example! I&#39;d take a l=
ook to see if I can reproduce the issue and figure out what&#39;s going on.=
 I&#39;ve been working recently on the Replay block, so I&#39;m very intere=
sted to understand what&#39;s going on.<br></div><div><br></div><div>Thanks=
,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quot=
e"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"></blockquote></div><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=
,<br><div>I am having an issue with UHD 3.15.LTS using the replay block.=C2=
=A0 When I play out my previously stored samples the first time, everything=
 works fine.=C2=A0 But after stopping the first time, if I try to start pla=
ying out again, I get a whole bunch of &#39;Lates&#39; and no RF output.</d=
iv><div><br></div><div>In order to duplicate the problem with an Ettus exam=
ple, I modified &#39;replay_samples_from_file&#39; to add a loop and comman=
d prompt so that the user could hit &lt;enter&gt; to start playing out whil=
e still using &lt;ctrl-c&gt; to stop.=C2=A0 Unfortunately for me, this work=
ed fine and did not show the problem.</div><div><br></div><div>Next, I furt=
her modified=C2=A0the example to place a DUC block in between the Replay bl=
ock and the Radio.=C2=A0 Now it duplicates the issue perfectly (modified ex=
ample attached).</div><div><br></div><div>So, perhaps I need to clear the D=
UC in some way when stopping the streaming??=C2=A0 But if so, I&#39;m not r=
eally sure how to do so.</div><div><br></div><div>Thanks.</div><div>Rob</di=
v></div></blockquote></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
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
</blockquote></div>

--000000000000738c8505a4986396--


--===============4532692819556725056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4532692819556725056==--

