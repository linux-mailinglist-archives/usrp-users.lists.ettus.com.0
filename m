Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3311B304637
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 19:27:06 +0100 (CET)
Received: from [::1] (port=46542 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4T3K-0004Qq-EH; Tue, 26 Jan 2021 13:26:58 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:40371)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1l4T3H-0004M5-7I
 for usrp-users@lists.ettus.com; Tue, 26 Jan 2021 13:26:55 -0500
Received: by mail-ot1-f48.google.com with SMTP id i20so17169973otl.7
 for <usrp-users@lists.ettus.com>; Tue, 26 Jan 2021 10:26:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dNImxQXXESpPtBkfZywwuXU0568oItbWGLr8KXgs7qc=;
 b=abOXnAGwZxQJHlMmib5pPu3BIJ+Pa6/vSxlccATBL2iOl0EyeroLA2U/rti3XRnHyu
 U2ULrMQxDUK+SxscHLnZln6N7WzsPwhMrv9Y44fE2ykYoow1BePW4N9VSt285mGxROOc
 Qju1CXD1k1+Pe/cLRyT/+nPkkAnoXGLIQb4x4DvymkLhTonz6CpHkPSk2Glpud1YWLdR
 DI/jiOaReQ3YvAKN8Ra4dLJc1HZS33MuFG4OYJ79z89+jP/k6IfaoVSNn1hy/GWTpo9C
 uESUb0+X+Dho3+hFZlUvhOk1nFRlpAFKnNqVtZZN1XJJcRSfVjzldHxN/ZbctQ006apL
 hcbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dNImxQXXESpPtBkfZywwuXU0568oItbWGLr8KXgs7qc=;
 b=hNcqIAoUligk7M5ndB5X9R+yyVWDaV8/LjA5vrLse3v24iO7D0/zJHTAZXlGmDmKd/
 w8a99v43bqhSpHp9uK11iRnBv/4bfIng6Zflhxxsl6a/F34i4d++1C1Gu1Sft2hPwVBC
 8/C2gHYfbIHdlYE9Hjl5wYojPkr9/n+XqKAbe2FsVkWGDrba4IJDcU7GTsgXoCWjQhbX
 qw9xvjCnYLX5zfmo12kPVZPWO6LUCSpxav9g+akkLTcBnRlfXaq3bZmnix4yszPcM/A3
 RXG8FsAw3fqylqvJM1Ki+4nfgEJX99j2sPzEtvpKTinB5LQDgHMJb9EG4pZ3HoB5qX8I
 jiZA==
X-Gm-Message-State: AOAM530F3dFznXU2AtYGXHUyalqbR+4C8hhJmfrsr9IOaBuz0NGlZ9eH
 Rs6fTcp99QcLml7tBrz/vBzi7xOk5vhaAaL5YfnXaKzd
X-Google-Smtp-Source: ABdhPJwmX31VJe1WRjoThMkP6jdcuPxCuxTLVSkH3WmdAYzO5Raid1X21oOBfIepaMCF3tfz1Q7QmWm3Xz5YYyG6x44=
X-Received: by 2002:a9d:19aa:: with SMTP id k39mr4866154otk.28.1611685574485; 
 Tue, 26 Jan 2021 10:26:14 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTRTpgT6++Hdo1a27jhdgenO6su0NkrXRTWkHkaJMcEUkQ@mail.gmail.com>
 <CAFche=jX2L+FL-Wz-XmFWkr5RkxKUyzWcN9hdXJhivbUnVEpVg@mail.gmail.com>
 <CAB__hTSNPW0NuTRX+qNOQZ3nMN+kVqCOXUFLGsV_jovnXpr-hw@mail.gmail.com>
In-Reply-To: <CAB__hTSNPW0NuTRX+qNOQZ3nMN+kVqCOXUFLGsV_jovnXpr-hw@mail.gmail.com>
Date: Tue, 26 Jan 2021 12:26:04 -0600
Message-ID: <CAFche=ir9tQku1WAXVGUA=2biWU_mH+v0i6EGUtE0D5q0mtvzg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] One or more blocks timed out during flush
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
From: Wade Fife via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="===============4296458607509690253=="
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

--===============4296458607509690253==
Content-Type: multipart/alternative; boundary="000000000000283b1a05b9d1ca18"

--000000000000283b1a05b9d1ca18
Content-Type: text/plain; charset="UTF-8"

I like your first idea. To get rid of the warning, I think your block just
needs to finish the last packet cleanly on each output port (i.e., TLAST
needs to be asserted on the last word written to the NoC shell). The second
idea will probably work too, but it won't necessarily get rid of the
warning.

Wade

On Tue, Jan 26, 2021 at 11:39 AM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Wade,
> So, I get what you are saying in general but I'm still not clear on
> specifics.
>
> My custom block is a multi-port pulse detector with an equal number of
> input and output ports. The idea is that the radios stream Rx samples on
> multiple ports to my block in a single continuous burst.  My block then
> uses multi-port logic to decide when energy is present such that it can
> discard samples (on all ports identically) that occur in between pulses.
>
> The problem I'm having is that the Rx radios don't all stop at the same
> time.  They all start synchronously, but stop asynchronously (in previous
> UHD versions, it was not possible to stop them using a time spec - I'm not
> sure if this is still the case in UHD 4).  So, since my block wants to
> process samples from all streams simultaneously (using an "axi_join" of all
> streams at the input), it has a problem when one stream stops before the
> rest.
>
> So, with that in mind, what should my block do to properly clear data?
> Here are my ideas but I'm hoping you can comment.
>
>    - Implement "flushing logic" at my block input such that once I
>    receive EOB on any stream, I discard data on the other streams until I
>    receive EOB for all streams.  I am presently building a version with this
>    logic which I just implemented a few minutes ago.
>    - Implement a "clear" register that will allow me to clear data pipes
>    using register writes.  I have already implemented this and it works to
>    some degree but not perfectly.  I'm still getting the UHD WARNING at
>    startup even though my block controller constructor asserts & then
>    de-asserts this clear which is wired to all of the FIFOs and other logic
>    that need cleared.  If I start UHD 2 or 3 times, eventually it starts up
>    without the WARNING but I don't understand why it takes 2 or 3 times and
>    would like to fix this.  And, I have confirmed that every time it starts up
>    with the WARNING, the output of my block is sample mis-aligned such that I
>    know there is still data in some pipe.
>
> Is there something my block should be doing during the UHD "flushing" step
> to make sure that the flush succeeds? I'm looking for any ideas,
> best-practices, etc., on how to make my custom block robust.
> Thanks.
> Rob
>
>
>
>
> On Tue, Jan 26, 2021 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> I believe RFNoC tries to flush any partially transmitted packets out of
>> blocks during initialization before resetting them. The idea is to get rid
>> of any leftover data that might still be in the data pipes. I think a
>> timeout means the noc_shell never saw the end of the last packet before the
>> timeout. I usually see this warning if I stopped the previous session
>> abruptly without properly stopping the data transfer.
>>
>> I think you'll see this warning if your block stops data transfer
>> mid-packet. Then, on the next session, it can't finish the packet it
>> started on the previous session. Or something like that. It's probably OK
>> to ignore if your block uses the resets coming out of the noc_shell to
>> reset everything.
>>
>> Wade
>>
>> On Mon, Jan 25, 2021 at 7:28 PM Rob Kossler via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> Using RFNOC 4.0 with a few of my custom blocks, I get the following
>>> warning at UHD startup (after having run it at least once before):
>>>
>>> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
>>>
>>> I'm confident it is something that I'm doing incorrectly with my block,
>>> but I'm wondering if anyone can comment on what causes this and / or what
>>> my block should be doing to avoid it.
>>>
>>> Rob
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000283b1a05b9d1ca18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I like your first idea. To get rid of the warning, I =
think your block just needs to finish the last packet cleanly on each outpu=
t port (i.e., TLAST needs to be asserted on the last word written to the No=
C shell). The second idea will probably work too, but it won&#39;t necessar=
ily get rid of the warning.<br></div><div><br></div><div>Wade<br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, Jan 26, 2021 at 11:39 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.=
edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>So, =
I get what you are saying in general but I&#39;m still not clear on specifi=
cs.=C2=A0=C2=A0</div><div><br></div><div>My custom block is a multi-port pu=
lse detector with an equal number of input=C2=A0and output ports. The idea =
is that the radios stream Rx samples on multiple ports to my block in a sin=
gle continuous burst.=C2=A0 My block then uses multi-port logic to decide w=
hen energy is present such that it can discard=C2=A0samples (on all ports i=
dentically) that occur in between pulses.=C2=A0</div><div><br></div><div>Th=
e problem I&#39;m having is that the Rx radios don&#39;t all stop at the sa=
me time.=C2=A0 They all start synchronously, but stop asynchronously (in pr=
evious UHD versions, it was not possible to stop them using a time spec - I=
&#39;m not sure if this is still the case in UHD 4).=C2=A0 So, since my blo=
ck wants to process samples from all streams simultaneously (using an &quot=
;axi_join&quot; of all streams at the input), it has a problem when one str=
eam stops before the rest.=C2=A0</div><div><br></div><div>So, with that in =
mind, what should my block do to properly clear data? Here are my ideas but=
 I&#39;m hoping you can comment.</div><div><ul><li>Implement &quot;flushing=
 logic&quot; at my block input such that once I receive EOB on any stream, =
I discard data on the other streams until I receive EOB for all streams.=C2=
=A0 I am presently building a version with this logic which I just implemen=
ted a=C2=A0few minutes ago.</li><li>Implement a &quot;clear&quot; register =
that will allow me to clear data pipes using register writes.=C2=A0 I have =
already implemented this and it works to some degree but not perfectly.=C2=
=A0 I&#39;m still getting the UHD WARNING at startup even though my block c=
ontroller constructor asserts &amp; then de-asserts this clear which is wir=
ed to all of the FIFOs and other=C2=A0logic that need cleared.=C2=A0 If I s=
tart UHD 2 or 3 times, eventually it starts up without the WARNING but I do=
n&#39;t understand why it=C2=A0takes 2 or 3 times and would like to fix thi=
s.=C2=A0 And, I have confirmed that every time it starts up with the WARNIN=
G, the output of my block is sample mis-aligned such that I know there is s=
till data in some pipe.=C2=A0=C2=A0</li></ul>Is there something my block sh=
ould be doing during the UHD &quot;flushing&quot; step to make sure that th=
e flush succeeds? I&#39;m looking for any ideas, best-practices, etc., on h=
ow to make my custom block robust.</div><div>Thanks.</div><div>Rob</div><di=
v><br></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 26, 2021 at 11:37 AM =
Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade=
.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>I believe RFNoC tries to flush any par=
tially transmitted packets out of blocks during initialization before reset=
ting them. The idea is to get rid of any leftover data that might still be =
in the data pipes. I think a timeout means the noc_shell never saw the end =
of the last packet before the timeout. I usually see this warning if I stop=
ped the previous session abruptly without properly stopping the data transf=
er.</div><div><br></div><div>I think you&#39;ll see this warning if your bl=
ock stops data transfer mid-packet. Then, on the next session, it can&#39;t=
 finish the packet it started on the previous session. Or something like th=
at. It&#39;s probably OK to ignore if your block uses the resets coming out=
 of the noc_shell to reset everything.<br></div><div><br></div><div>Wade<br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Jan 25, 2021 at 7:28 PM Rob Kossler via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<br><div>Using RFNOC 4.0 with a few of my cu=
stom blocks, I get the following warning at UHD startup (after having run i=
t at least once before):</div><div><br></div><div>[WARNING] [RFNOC::GRAPH] =
One or more blocks timed out during flush!<br></div><div><br></div><div>I&#=
39;m confident it is something that I&#39;m doing incorrectly with my block=
, but I&#39;m wondering if anyone can comment on what causes this and / or =
what my block should be doing to avoid it.</div><div><br></div><div>Rob</di=
v></div>
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

--000000000000283b1a05b9d1ca18--


--===============4296458607509690253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4296458607509690253==--

