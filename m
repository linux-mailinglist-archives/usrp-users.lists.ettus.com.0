Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C720304880
	for <lists+usrp-users@lfdr.de>; Tue, 26 Jan 2021 20:26:28 +0100 (CET)
Received: from [::1] (port=47072 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4Tyt-0006p3-23; Tue, 26 Jan 2021 14:26:27 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41722)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l4Typ-0006ce-27
 for usrp-users@lists.ettus.com; Tue, 26 Jan 2021 14:26:23 -0500
Received: by mail-oi1-f179.google.com with SMTP id m13so11752796oig.8
 for <usrp-users@lists.ettus.com>; Tue, 26 Jan 2021 11:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2tSVkEuodeZtghtn10lUMoV7kqUsIUMMVg9KxDfN/CU=;
 b=DIlSbLbvAsusVvNts2cRjOIfU/3tfIXy0fTUN6B/SFmjBUvE3wASGIop+aZD7P932Z
 MVQ8iC9OABB4fB1aYMH+7UNJPpBQQmSa3ZtlExemf7bWbrnVxB4RvW2n3jkZ1U7Vdz6b
 +/pMERETiC8oeqNrbd5EFcV7o3CTDP/eZzj8fMg0nNLKaw2v1Ij92iM68eUbnvSS2tEg
 ECrX9ukz6gTQJPl2ifLkMW1f7l2ACQlP8A4SfEHufjCpmjpvE6ASrNKghMjqFi55MLoB
 IlrbM6bSxYKPr+jIclgHThsxP4Zj2F4tYQV7xEdzN4UmPyQpiBNZBqYYkoaWJBsIWAOj
 ixiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2tSVkEuodeZtghtn10lUMoV7kqUsIUMMVg9KxDfN/CU=;
 b=r9vPY5DtL64a99e2hNretGdrw+PYOXzwbWcZkfZckm1FXqfA1HdJqZigxJxxx2zalu
 XAJJI1vOYW2p5/gcddEREAXY5fUNCSd6qN3553nTtbdYasyRqvaO1ujGIuxsmVeppM67
 7DdnjJu3bahuYnTUFgQ+WgtyGFqd+/Fi2bY44+LKlCjlplIWGYlBy73X94Io7VYhPnDO
 jLWZAUovOgPTmKCKolrgqhQ78fknz9u7wrYUYbRi4ecyccgd6c7dbPQNoalNqFvs5QOw
 L7Qqh2YHd+dXJWTwYhAEyqyfeCDhEk2yCdrJ9izbiBh+iOZiFPdi8F2Xxs487B9uQkYY
 G04A==
X-Gm-Message-State: AOAM533IQuXl17te1Uzq70eri9XSUsp4XkWz+6VKM0xLV+VSty5b//bh
 p2aSjEn7mpYLw96eeueg0bMEfOgKmoqMOTihBlqgPQ==
X-Google-Smtp-Source: ABdhPJyi9YhuUto+zrQ1ao8JvjEtsDw8QdnF/LSxzU+T0ywb4PeVcox3VzW9V25mDVHDnNTxBfBY5g5hs/lUuDO1tRw=
X-Received: by 2002:aca:d98a:: with SMTP id q132mr781721oig.33.1611689140796; 
 Tue, 26 Jan 2021 11:25:40 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTRTpgT6++Hdo1a27jhdgenO6su0NkrXRTWkHkaJMcEUkQ@mail.gmail.com>
 <CAFche=jX2L+FL-Wz-XmFWkr5RkxKUyzWcN9hdXJhivbUnVEpVg@mail.gmail.com>
 <CAB__hTSNPW0NuTRX+qNOQZ3nMN+kVqCOXUFLGsV_jovnXpr-hw@mail.gmail.com>
 <CAFche=ir9tQku1WAXVGUA=2biWU_mH+v0i6EGUtE0D5q0mtvzg@mail.gmail.com>
In-Reply-To: <CAFche=ir9tQku1WAXVGUA=2biWU_mH+v0i6EGUtE0D5q0mtvzg@mail.gmail.com>
Date: Tue, 26 Jan 2021 14:25:29 -0500
Message-ID: <CAB__hTRK9D_5gmEjtibSjLWZPR=kPgR_PG5Zw1Z5jLBM8Egg9Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============3399651785190536604=="
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

--===============3399651785190536604==
Content-Type: multipart/alternative; boundary="000000000000ba0a5505b9d29ed2"

--000000000000ba0a5505b9d29ed2
Content-Type: text/plain; charset="UTF-8"

My new logic appears to have solved the issue of cleaning up the unequal
length streams coming from the radios.  So, my block is not getting into
this bad state anymore.

However, just to finish up this discussion, I don't think that the warning
is solely related to the output ports (which is how I understood your last
reply).  I think that data is trapped at the input and not clearing. For
example, consider the Add/Sub rfnoc block which expects synchronous data at
the input. My theory (not proven) is that if you connected 2 radio blocks
to the inputs and monitored the outputs, you would determine that it worked
fine the initial burst from the radio, but on subsequent bursts, the data
would be misaligned because there would still be samples in one of the two
noc_shell input fifos (due to the non-synchronous stop of the radios). And,
I think you may get the WARNING I mentioned upon subsequent UHD startup
using this Add/Sub block.

If I have time, I will try to prove this, but for now my block is working
and I have other fish to fry.
Rob


On Tue, Jan 26, 2021 at 1:26 PM Wade Fife <wade.fife@ettus.com> wrote:

> I like your first idea. To get rid of the warning, I think your block just
> needs to finish the last packet cleanly on each output port (i.e., TLAST
> needs to be asserted on the last word written to the NoC shell). The second
> idea will probably work too, but it won't necessarily get rid of the
> warning.
>
> Wade
>
> On Tue, Jan 26, 2021 at 11:39 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Thanks Wade,
>> So, I get what you are saying in general but I'm still not clear on
>> specifics.
>>
>> My custom block is a multi-port pulse detector with an equal number of
>> input and output ports. The idea is that the radios stream Rx samples on
>> multiple ports to my block in a single continuous burst.  My block then
>> uses multi-port logic to decide when energy is present such that it can
>> discard samples (on all ports identically) that occur in between pulses.
>>
>> The problem I'm having is that the Rx radios don't all stop at the same
>> time.  They all start synchronously, but stop asynchronously (in previous
>> UHD versions, it was not possible to stop them using a time spec - I'm not
>> sure if this is still the case in UHD 4).  So, since my block wants to
>> process samples from all streams simultaneously (using an "axi_join" of all
>> streams at the input), it has a problem when one stream stops before the
>> rest.
>>
>> So, with that in mind, what should my block do to properly clear data?
>> Here are my ideas but I'm hoping you can comment.
>>
>>    - Implement "flushing logic" at my block input such that once I
>>    receive EOB on any stream, I discard data on the other streams until I
>>    receive EOB for all streams.  I am presently building a version with this
>>    logic which I just implemented a few minutes ago.
>>    - Implement a "clear" register that will allow me to clear data pipes
>>    using register writes.  I have already implemented this and it works to
>>    some degree but not perfectly.  I'm still getting the UHD WARNING at
>>    startup even though my block controller constructor asserts & then
>>    de-asserts this clear which is wired to all of the FIFOs and other logic
>>    that need cleared.  If I start UHD 2 or 3 times, eventually it starts up
>>    without the WARNING but I don't understand why it takes 2 or 3 times and
>>    would like to fix this.  And, I have confirmed that every time it starts up
>>    with the WARNING, the output of my block is sample mis-aligned such that I
>>    know there is still data in some pipe.
>>
>> Is there something my block should be doing during the UHD "flushing"
>> step to make sure that the flush succeeds? I'm looking for any ideas,
>> best-practices, etc., on how to make my custom block robust.
>> Thanks.
>> Rob
>>
>>
>>
>>
>> On Tue, Jan 26, 2021 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:
>>
>>> I believe RFNoC tries to flush any partially transmitted packets out of
>>> blocks during initialization before resetting them. The idea is to get rid
>>> of any leftover data that might still be in the data pipes. I think a
>>> timeout means the noc_shell never saw the end of the last packet before the
>>> timeout. I usually see this warning if I stopped the previous session
>>> abruptly without properly stopping the data transfer.
>>>
>>> I think you'll see this warning if your block stops data transfer
>>> mid-packet. Then, on the next session, it can't finish the packet it
>>> started on the previous session. Or something like that. It's probably OK
>>> to ignore if your block uses the resets coming out of the noc_shell to
>>> reset everything.
>>>
>>> Wade
>>>
>>> On Mon, Jan 25, 2021 at 7:28 PM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi,
>>>> Using RFNOC 4.0 with a few of my custom blocks, I get the following
>>>> warning at UHD startup (after having run it at least once before):
>>>>
>>>> [WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!
>>>>
>>>> I'm confident it is something that I'm doing incorrectly with my block,
>>>> but I'm wondering if anyone can comment on what causes this and / or what
>>>> my block should be doing to avoid it.
>>>>
>>>> Rob
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>>

--000000000000ba0a5505b9d29ed2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">My new logic appears to have solved the i=
ssue of cleaning up the unequal length streams coming from the radios.=C2=
=A0 So, my block is not getting into this bad state anymore.=C2=A0=C2=A0<di=
v><br></div><div>However, just to finish up this discussion, I don&#39;t th=
ink that the warning is solely related to the output ports (which is how I =
understood your last reply).=C2=A0 I think that data is trapped at the inpu=
t and not clearing. For example, consider the Add/Sub rfnoc block which exp=
ects synchronous data at the input. My theory (not proven) is that if you c=
onnected 2 radio blocks to the inputs and monitored the outputs, you would =
determine that it worked fine the initial burst from the radio, but on subs=
equent bursts, the data would be misaligned because there would still be sa=
mples in one of the two noc_shell input fifos (due to the non-synchronous s=
top of the radios). And, I think you may get the WARNING I mentioned upon s=
ubsequent UHD startup using this Add/Sub block.<div><br></div><div>If I hav=
e time, I will try to prove this, but for now my block is working and I hav=
e other fish to fry.</div><div>Rob</div><div><br></div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 26=
, 2021 at 1:26 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade=
.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><div>I like your first idea. To get rid of =
the warning, I think your block just needs to finish the last packet cleanl=
y on each output port (i.e., TLAST needs to be asserted on the last word wr=
itten to the NoC shell). The second idea will probably work too, but it won=
&#39;t necessarily get rid of the warning.<br></div><div><br></div><div>Wad=
e<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Jan 26, 2021 at 11:39 AM Rob Kossler &lt;<a href=3D"mail=
to:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div =
dir=3D"ltr">Thanks Wade,<div>So, I get what you are saying in general but I=
&#39;m still not clear on specifics.=C2=A0=C2=A0</div><div><br></div><div>M=
y custom block is a multi-port pulse detector with an equal number of input=
=C2=A0and output ports. The idea is that the radios stream Rx samples on mu=
ltiple ports to my block in a single continuous burst.=C2=A0 My block then =
uses multi-port logic to decide when energy is present such that it can dis=
card=C2=A0samples (on all ports identically) that occur in between pulses.=
=C2=A0</div><div><br></div><div>The problem I&#39;m having is that the Rx r=
adios don&#39;t all stop at the same time.=C2=A0 They all start synchronous=
ly, but stop asynchronously (in previous UHD versions, it was not possible =
to stop them using a time spec - I&#39;m not sure if this is still the case=
 in UHD 4).=C2=A0 So, since my block wants to process samples from all stre=
ams simultaneously (using an &quot;axi_join&quot; of all streams at the inp=
ut), it has a problem when one stream stops before the rest.=C2=A0</div><di=
v><br></div><div>So, with that in mind, what should my block do to properly=
 clear data? Here are my ideas but I&#39;m hoping you can comment.</div><di=
v><ul><li>Implement &quot;flushing logic&quot; at my block input such that =
once I receive EOB on any stream, I discard data on the other streams until=
 I receive EOB for all streams.=C2=A0 I am presently building a version wit=
h this logic which I just implemented a=C2=A0few minutes ago.</li><li>Imple=
ment a &quot;clear&quot; register that will allow me to clear data pipes us=
ing register writes.=C2=A0 I have already implemented this and it works to =
some degree but not perfectly.=C2=A0 I&#39;m still getting the UHD WARNING =
at startup even though my block controller constructor asserts &amp; then d=
e-asserts this clear which is wired to all of the FIFOs and other=C2=A0logi=
c that need cleared.=C2=A0 If I start UHD 2 or 3 times, eventually it start=
s up without the WARNING but I don&#39;t understand why it=C2=A0takes 2 or =
3 times and would like to fix this.=C2=A0 And, I have confirmed that every =
time it starts up with the WARNING, the output of my block is sample mis-al=
igned such that I know there is still data in some pipe.=C2=A0=C2=A0</li></=
ul>Is there something my block should be doing during the UHD &quot;flushin=
g&quot; step to make sure that the flush succeeds? I&#39;m looking for any =
ideas, best-practices, etc., on how to make my custom block robust.</div><d=
iv>Thanks.</div><div>Rob</div><div><br></div><div><br></div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Tue, Jan 26, 2021 at 11:37 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@=
ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I bel=
ieve RFNoC tries to flush any partially transmitted packets out of blocks d=
uring initialization before resetting them. The idea is to get rid of any l=
eftover data that might still be in the data pipes. I think a timeout means=
 the noc_shell never saw the end of the last packet before the timeout. I u=
sually see this warning if I stopped the previous session abruptly without =
properly stopping the data transfer.</div><div><br></div><div>I think you&#=
39;ll see this warning if your block stops data transfer mid-packet. Then, =
on the next session, it can&#39;t finish the packet it started on the previ=
ous session. Or something like that. It&#39;s probably OK to ignore if your=
 block uses the resets coming out of the noc_shell to reset everything.<br>=
</div><div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 25, 2021 at 7:28 PM Rob=
 Kossler via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><div>Usi=
ng RFNOC 4.0 with a few of my custom blocks, I get the following warning at=
 UHD startup (after having run it at least once before):</div><div><br></di=
v><div>[WARNING] [RFNOC::GRAPH] One or more blocks timed out during flush!<=
br></div><div><br></div><div>I&#39;m confident it is something that I&#39;m=
 doing incorrectly with my block, but I&#39;m wondering if anyone can comme=
nt on what causes this and / or what my block should be doing to avoid it.<=
/div><div><br></div><div>Rob</div></div>
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
</blockquote></div></div>

--000000000000ba0a5505b9d29ed2--


--===============3399651785190536604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3399651785190536604==--

