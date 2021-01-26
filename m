Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A2130457D
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 18:40:16 +0100 (CET)
Received: from [::1] (port=46214 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4SK4-0001pv-FM; Tue, 26 Jan 2021 12:40:12 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:45492)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l4SK0-0001lY-J6
 for usrp-users@lists.ettus.com; Tue, 26 Jan 2021 12:40:08 -0500
Received: by mail-ot1-f43.google.com with SMTP id n42so16990159ota.12
 for <usrp-users@lists.ettus.com>; Tue, 26 Jan 2021 09:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kOu/sA9Q+dqbuWO1LQWhIG5hdjDFtOSqzLfVnzV1UD0=;
 b=KLqEJAKB+UKEyOFOSOEBXDRSRc8UzX2qmMrMrSEH6ftZ2j7wQBzEey0/lWoAhGymH6
 FwIkbPHbR/5qW7d4Nx3Gu5GdLA+oyQ980+FRiDKAl8++LrK4BNiV/nXvv+ZR9Q0d2X7a
 6xooyvQMCfg5O8UW4XIK6YVj7rBVAj1n84NAx2JruoG59I0IVO70K4YggIAPZfh0SOet
 RjD1k6iFewTQ3KZnfnBDiTNh9M0lNuVS8zcVmkgmXF2ij3zBVjHkoyqkZ7Xaee1Mi2QH
 PnKVv+QksJfD0P8c4g2Do2HkAHDctyheZH1ljT1Vs/raD542BxXPStdrUlzJuUNG3a5j
 S5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kOu/sA9Q+dqbuWO1LQWhIG5hdjDFtOSqzLfVnzV1UD0=;
 b=r4uK5XAPcdqxsdFJWX8Mnam7NbPrU3Rey9DsyQSXGhWHwV/+jXl6r2v5sWWA0w0itv
 GSjI1vlO+F8eZzlIsIfNWzxhnnnenrb4oGo3qGbfjK2Rma0yF7lNUrm2+yInXOa4q+EX
 oQE3en5LJEu2ynZrzDbfCb2j5dKf9X1KilAw3XtDG1TJnvT+R8N7uEZr1EuZ4UodnG/1
 A+cPRFcGuztT75h1Q9qFYTLvF3hIS2Py9tM4pHC8F/COax5ZFaM5NklFZIASXW3W1PD2
 PGrkyGgFc/0ZfPERfUgZSFAIAG0mxF0+3okJ/ydKi3l0f2+gjTdPqpBKbz4s60mxNw/z
 XMwg==
X-Gm-Message-State: AOAM532ujO8x0AacGnhjl18Pw333zpLC4HPfN/s/aDULWfLg5xILxcUm
 9xFFdMSp6kUcoThOK/3XoUpZHPM0OXelc+w2JRdU1A==
X-Google-Smtp-Source: ABdhPJz4r+Y9XU95J31MmVkYDFyaZLLe+uTQd3dF+xnbssTcr4ZpaM7Hb00xFx4tDarVjJA+zaIc735B+tPlpZA57dc=
X-Received: by 2002:a9d:7486:: with SMTP id t6mr4750606otk.58.1611682767561;
 Tue, 26 Jan 2021 09:39:27 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTRTpgT6++Hdo1a27jhdgenO6su0NkrXRTWkHkaJMcEUkQ@mail.gmail.com>
 <CAFche=jX2L+FL-Wz-XmFWkr5RkxKUyzWcN9hdXJhivbUnVEpVg@mail.gmail.com>
In-Reply-To: <CAFche=jX2L+FL-Wz-XmFWkr5RkxKUyzWcN9hdXJhivbUnVEpVg@mail.gmail.com>
Date: Tue, 26 Jan 2021 12:39:16 -0500
Message-ID: <CAB__hTSNPW0NuTRX+qNOQZ3nMN+kVqCOXUFLGsV_jovnXpr-hw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4999107816896087501=="
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

--===============4999107816896087501==
Content-Type: multipart/alternative; boundary="000000000000da3d3905b9d122f1"

--000000000000da3d3905b9d122f1
Content-Type: text/plain; charset="UTF-8"

Thanks Wade,
So, I get what you are saying in general but I'm still not clear on
specifics.

My custom block is a multi-port pulse detector with an equal number of
input and output ports. The idea is that the radios stream Rx samples on
multiple ports to my block in a single continuous burst.  My block then
uses multi-port logic to decide when energy is present such that it can
discard samples (on all ports identically) that occur in between pulses.

The problem I'm having is that the Rx radios don't all stop at the same
time.  They all start synchronously, but stop asynchronously (in previous
UHD versions, it was not possible to stop them using a time spec - I'm not
sure if this is still the case in UHD 4).  So, since my block wants to
process samples from all streams simultaneously (using an "axi_join" of all
streams at the input), it has a problem when one stream stops before the
rest.

So, with that in mind, what should my block do to properly clear data? Here
are my ideas but I'm hoping you can comment.

   - Implement "flushing logic" at my block input such that once I receive
   EOB on any stream, I discard data on the other streams until I receive EOB
   for all streams.  I am presently building a version with this logic which I
   just implemented a few minutes ago.
   - Implement a "clear" register that will allow me to clear data pipes
   using register writes.  I have already implemented this and it works to
   some degree but not perfectly.  I'm still getting the UHD WARNING at
   startup even though my block controller constructor asserts & then
   de-asserts this clear which is wired to all of the FIFOs and other logic
   that need cleared.  If I start UHD 2 or 3 times, eventually it starts up
   without the WARNING but I don't understand why it takes 2 or 3 times and
   would like to fix this.  And, I have confirmed that every time it starts up
   with the WARNING, the output of my block is sample mis-aligned such that I
   know there is still data in some pipe.

Is there something my block should be doing during the UHD "flushing" step
to make sure that the flush succeeds? I'm looking for any ideas,
best-practices, etc., on how to make my custom block robust.
Thanks.
Rob




On Tue, Jan 26, 2021 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:

> I believe RFNoC tries to flush any partially transmitted packets out of
> blocks during initialization before resetting them. The idea is to get rid
> of any leftover data that might still be in the data pipes. I think a
> timeout means the noc_shell never saw the end of the last packet before the
> timeout. I usually see this warning if I stopped the previous session
> abruptly without properly stopping the data transfer.
>
> I think you'll see this warning if your block stops data transfer
> mid-packet. Then, on the next session, it can't finish the packet it
> started on the previous session. Or something like that. It's probably OK
> to ignore if your block uses the resets coming out of the noc_shell to
> reset everything.
>
> Wade
>
> On Mon, Jan 25, 2021 at 7:28 PM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>> Using RFNOC 4.0 with a few of my custom blocks, I get the following
>> warning at UHD startup (after having run it at least once before):
>>
>> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
>>
>> I'm confident it is something that I'm doing incorrectly with my block,
>> but I'm wondering if anyone can comment on what causes this and / or what
>> my block should be doing to avoid it.
>>
>> Rob
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000da3d3905b9d122f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Wade,<div>So, I get what you are s=
aying in general but I&#39;m still not clear on specifics.=C2=A0=C2=A0</div=
><div><br></div><div>My custom block is a multi-port pulse detector with an=
 equal number of input=C2=A0and output ports. The idea is that the radios s=
tream Rx samples on multiple ports to my block in a single continuous burst=
.=C2=A0 My block then uses multi-port logic to decide when energy is presen=
t such that it can discard=C2=A0samples (on all ports identically) that occ=
ur in between pulses.=C2=A0</div><div><br></div><div>The problem I&#39;m ha=
ving is that the Rx radios don&#39;t all stop at the same time.=C2=A0 They =
all start synchronously, but stop asynchronously (in previous UHD versions,=
 it was not possible to stop them using a time spec - I&#39;m not sure if t=
his is still the case in UHD 4).=C2=A0 So, since my block wants to process =
samples from all streams simultaneously (using an &quot;axi_join&quot; of a=
ll streams at the input), it has a problem when one stream stops before the=
 rest.=C2=A0</div><div><br></div><div>So, with that in mind, what should my=
 block do to properly clear data? Here are my ideas but I&#39;m hoping you =
can comment.</div><div><ul><li>Implement &quot;flushing logic&quot; at my b=
lock input such that once I receive EOB on any stream, I discard data on th=
e other streams until I receive EOB for all streams.=C2=A0 I am presently b=
uilding a version with this logic which I just implemented a=C2=A0few minut=
es ago.</li><li>Implement a &quot;clear&quot; register that will allow me t=
o clear data pipes using register writes.=C2=A0 I have already implemented =
this and it works to some degree but not perfectly.=C2=A0 I&#39;m still get=
ting the UHD WARNING at startup even though my block controller constructor=
 asserts &amp; then de-asserts this clear which is wired to all of the FIFO=
s and other=C2=A0logic that need cleared.=C2=A0 If I start UHD 2 or 3 times=
, eventually it starts up without the WARNING but I don&#39;t understand wh=
y it=C2=A0takes 2 or 3 times and would like to fix this.=C2=A0 And, I have =
confirmed that every time it starts up with the WARNING, the output of my b=
lock is sample mis-aligned such that I know there is still data in some pip=
e.=C2=A0=C2=A0</li></ul>Is there something my block should be doing during =
the UHD &quot;flushing&quot; step to make sure that the flush succeeds? I&#=
39;m looking for any ideas, best-practices, etc., on how to make my custom =
block robust.</div><div>Thanks.</div><div>Rob</div><div><br></div><div><br>=
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Jan 26, 2021 at 11:37 AM Wade Fife &lt;<a href=
=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I =
believe RFNoC tries to flush any partially transmitted packets out of block=
s during initialization before resetting them. The idea is to get rid of an=
y leftover data that might still be in the data pipes. I think a timeout me=
ans the noc_shell never saw the end of the last packet before the timeout. =
I usually see this warning if I stopped the previous session abruptly witho=
ut properly stopping the data transfer.</div><div><br></div><div>I think yo=
u&#39;ll see this warning if your block stops data transfer mid-packet. The=
n, on the next session, it can&#39;t finish the packet it started on the pr=
evious session. Or something like that. It&#39;s probably OK to ignore if y=
our block uses the resets coming out of the noc_shell to reset everything.<=
br></div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 25, 2021 at 7:28 PM =
Rob Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>=
Using RFNOC 4.0 with a few of my custom blocks, I get the following warning=
 at UHD startup (after having run it at least once before):</div><div><br><=
/div><div>[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flus=
h!<br></div><div><br></div><div>I&#39;m confident it is something that I&#3=
9;m doing incorrectly with my block, but I&#39;m wondering if anyone can co=
mment on what causes this and / or what my block should be doing to avoid i=
t.</div><div><br></div><div>Rob</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--000000000000da3d3905b9d122f1--


--===============4999107816896087501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4999107816896087501==--

