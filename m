Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 298D011A5E
	for <lists+usrp-users@lfdr.de>; Thu,  2 May 2019 15:37:15 +0200 (CEST)
Received: from [::1] (port=49480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMBtf-0006v1-7W; Thu, 02 May 2019 09:37:11 -0400
Received: from mail-pg1-f179.google.com ([209.85.215.179]:42631)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <mike.piscopo@gmail.com>)
 id 1hMBt6-0006ir-Me
 for usrp-users@lists.ettus.com; Thu, 02 May 2019 09:37:06 -0400
Received: by mail-pg1-f179.google.com with SMTP id p6so1068290pgh.9
 for <usrp-users@lists.ettus.com>; Thu, 02 May 2019 06:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o/zv0PHCHJ6Vkt+U/PBjJA8qjtteVT2oczBIfbEqAog=;
 b=bGR+CBqhuc7znWYMVnDJHI28TU3Hni288URDU7ZzRtlH0FsvaxePLZCm0HRuEejqor
 fVsvYukhulioJIwRg14Y19/jhu1gpQk4KtMRWqEDEvDt5x2z41MI61HbukGkMYlZba6I
 /odYmOj8BBd8mMzXvo9UTgRfdViPfq8uMtFld5knCYztKxWnDV7yX3AbNkOYv2LhMN4L
 SrFK0+d7zYyqeSbDfXsQhBTQUcuginDUKSNsKI+TZYDfr8rw8i0YPoMdTKKcRvz1Ibdg
 0YNb60QHrUlpDtJhkwLse2t5ZtcCl714ZmgpzpoOcHA5a9IihImt2y1XW0zIP7tWsoDh
 jq9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o/zv0PHCHJ6Vkt+U/PBjJA8qjtteVT2oczBIfbEqAog=;
 b=KiLM+bnMWqtagHjbzykT4ix0AVRGNq32qhfoZ5qrYJzaYysvHcQQySnyqVOoqRCbR/
 +hW+7QB0BtUkn4S4USPXAsU+36KkSj1+QMsHgK66CDThmMGcaAQ0FJBvj9oPKEBQ7Za2
 KcbwtBOmcHlYM1woCuQbsfMq2GZgGJbzVcvQpa7Z3eGiPJuDYhfUOusastTR/V9FLxxg
 VfohZHaVDY202+PdLknzHaawQ+ADeGNiyATFwXQwfIkCUfqsgz3j3r6hFAuiT0FVBopT
 K6PciSBp/gu75lxgkAb12Spqbn04WhYFMbTRgobtqKh5xqhGX4EbqAWMyO2UxqryN6AT
 +w3A==
X-Gm-Message-State: APjAAAWSFksNXiwiSOX58C3jvSvwT6+1JdPKkzzQxzcd6DUqW5e7XYBh
 Qeclo/QCPGzAwpUazP6MDEfoLJtdYlwVPBGN2nNPuqTQ
X-Google-Smtp-Source: APXvYqwZAtwYg4ppiscUwRjY1+0iIEdcA983nvkhxKlRX2FajnpfojfkAV+IbaywtbHrz6OkIr2ibwp3lYXtwWzAd60=
X-Received: by 2002:aa7:8046:: with SMTP id y6mr4292799pfm.251.1556804155439; 
 Thu, 02 May 2019 06:35:55 -0700 (PDT)
MIME-Version: 1.0
References: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
 <5CC795B9.4050401@gmail.com>
 <CAAY_VvEZR_a9bqOoq4Hk4Uo7ynEJ8Z06G8iKR0Se_qjOE8CK2A@mail.gmail.com>
 <CANaxSir2Ezd7BzxWyxRs-aHbMwXQW0tGDCJwSEQuni9f_GKQWA@mail.gmail.com>
 <CAAY_VvGM5=PduLJX0MbB=92a8gpM++peKrBih+-1sZs8_k1Q_g@mail.gmail.com>
In-Reply-To: <CAAY_VvGM5=PduLJX0MbB=92a8gpM++peKrBih+-1sZs8_k1Q_g@mail.gmail.com>
Date: Thu, 2 May 2019 09:35:43 -0400
Message-ID: <CAAY_VvF92fWk6_RxRRRgMetN6ETk7hjXbST8ZncBE+vdt-F4sw@mail.gmail.com>
To: Ali Dormiani <sdormian@eng.ucsd.edu>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] How to periodically write files using USRP and
 GNUradio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: GhostOp14 via USRP-users <usrp-users@lists.ettus.com>
Reply-To: GhostOp14 <ghostop14@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1541166764721208777=="
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

--===============1541166764721208777==
Content-Type: multipart/alternative; boundary="000000000000ab803f0587e7b6e4"

--000000000000ab803f0587e7b6e4
Content-Type: text/plain; charset="UTF-8"

Ali, I just pushed a couple of updates.  Let's see if that fixes it for you.

I added:
1. [Timer] Some thread safety to the timer module.  I also noticed in my
flowgraph if I went to the top block options and turned on "realtime
scheduling" it was generally more accurate on the timing (makes sense).
2. [File Sink] Added a proper gnuradio stop() function to make sure files
get properly closed on exit. (Burns me every time.... swig doesn't
guarantee that C++ destructors get called so you really need to clean up in
stop().  I just get lazy sometimes)

Anyway do a fresh git pull and let me know if that fixes any of your issues
or if you still experience them.



On Wed, May 1, 2019 at 8:52 PM GhostOp14 <ghostop14@gmail.com> wrote:

> Thanks Ali,
>
> I'll take a look at what you found with inconsistencies and see if I can
> hunt them down.
>
>
>
> On Wed, May 1, 2019 at 5:35 PM Ali Dormiani <sdormian@eng.ucsd.edu> wrote:
>
>> Hello GhostOp14 and USRP users,
>>
>> Your oot blocks are amazing. They do exactly what we need in a clean way.
>> In testing, we have found that there are rare anomalies though (occur like
>> a rare Poisson process).
>>
>> 1. Sometimes the advanced file sink will create an empty file of 0 bytes.
>>
>> 2. Sometimes the state timer messes up. We avoid a runaway data capture
>> by using the 'max file size' parameter in the advanced file sink.
>>
>> Overall, this solution is very good and eliminates a lot of variables
>> from our experiments. All of our USRP devices are initialized once and
>> constantly stream data (only some of which is saved). Our phase calibration
>> is a lot more consistent now.
>>
>> Thank you again for providing these oot blocks on Github. My own custom
>> embedded python block was inelegant and inconsistent.
>>
>> Cheers,
>>
>> Ali
>>
>>
>> On Wed, May 1, 2019 at 6:19 AM GhostOp14 via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Morning everyone, not sure my note yesterday hit the list correctly so
>>> I'm trying again.
>>>
>>> Mark: I have a solution for you.  I added a new block yesterday to
>>> gr-filerepeater (pybombs or github).  There's now a state timer block
>>> that'll generate a message based on block-specified timing.  Trigger time,
>>> cycle time, etc.  gr-filerepeater also has a new file sink block I've added
>>> in the past couple of weeks specifically to address the same kind of
>>> problem.  You can feed the timer msg out to the new sink msg in.  The new
>>> block will then key off the state (1/0) in the msg metadata and start/stop
>>> writing to a file.  You can specify a directory and a base file name, then
>>> every time a new file write is started it'll append a timestamp.  Should
>>> exactly match up to what you're trying to accomplish.  I'll post on the
>>> gnuradio list as well since they're gnuradio blocks.
>>>
>>>
>>>
>>> On Mon, Apr 29, 2019 at 8:24 PM Marcus D. Leech via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> On 04/29/2019 08:08 PM, Mark Wagner via USRP-users wrote:
>>>> > Hey all,
>>>> >
>>>> > I'd like to know how to write short files of streamed USRP data
>>>> > periodically using GNUradio. For instance, I'd like the USRP to
>>>> > automatically record 5 seconds of data every 10 minutes. It does not
>>>> > matter to me whether the USRP is constantly on and most of the data
>>>> is
>>>> > being discarded, or if the USRP wakes up every 10 minutes to record
>>>> > the data before sleeping. Whichever is easiest to achieve is fine by
>>>> > me. Does anyone have experience doing this kind of thing?
>>>> >
>>>> > -Mark
>>>> >
>>>> >
>>>> >
>>>> > --
>>>> > Mark Wagner
>>>> > University of California San Diego
>>>> > Electrical and Computer Engineering
>>>> >
>>>> >
>>>> If you're using Gnu Radio, you can simply use the file sink, and have
>>>> it
>>>> record to "/dev/null" most of the time, then have something (perhaps via
>>>>    the XMLRPC built-in feature) change the filename to whatever your
>>>> desired filename is, and then revert it back to "/dev/null".
>>>>
>>>> I think I said the same thing on the discuss-gnuradio mailing list a
>>>> few
>>>> days ago.
>>>>
>>>> The usrp-users mailing list isn't the best place to ask Gnu Radio
>>>> questions, a question like this, which is inherently radio-type
>>>> agnostic, probably
>>>>    belongs on the discuss-gnuradio mailng list, because it's more about
>>>> "how do I make Gnu Radio dance".
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--000000000000ab803f0587e7b6e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ali, I just pushed a couple of updates.=C2=A0 Let&#39=
;s see if that fixes it for you.</div><div><br></div><div>I added:</div><di=
v>1. [Timer] Some thread safety to the timer module.=C2=A0 I also noticed i=
n my flowgraph if I went to the top block options and turned on &quot;realt=
ime scheduling&quot; it was generally more accurate on the timing (makes se=
nse).</div><div>2. [File Sink] Added a proper gnuradio stop() function to m=
ake sure files get properly closed on exit. (Burns me every time.... swig d=
oesn&#39;t guarantee that C++ destructors get called so you really need to =
clean up in stop().=C2=A0 I just get lazy sometimes)</div><div><br></div><d=
iv>Anyway do a fresh git pull and let me know if that fixes any of your iss=
ues or if you still experience them.<br></div><div><br></div><div><br></div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, May 1, 2019 at 8:52 PM GhostOp14 &lt;<a href=3D"mailto:ghostop14@g=
mail.com">ghostop14@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thanks Ali,</div><div><b=
r></div><div>I&#39;ll take a look at what you found with inconsistencies an=
d see if I can hunt them down.</div><div><br></div><div><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, M=
ay 1, 2019 at 5:35 PM Ali Dormiani &lt;<a href=3D"mailto:sdormian@eng.ucsd.=
edu" target=3D"_blank">sdormian@eng.ucsd.edu</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello Gho=
stOp14 and USRP users,</div><div><br></div><div>Your oot blocks are amazing=
. They do exactly what we need in a clean way. In testing, we have found th=
at there are rare anomalies though (occur like a rare Poisson process).</di=
v><div><br></div><div>1. Sometimes the advanced file sink will create an em=
pty file of 0 bytes. <br></div><div><br></div><div>2. Sometimes the state t=
imer messes up. We avoid a runaway data capture by using the &#39;max file =
size&#39; parameter in the advanced file sink.</div><div><br></div><div>Ove=
rall, this solution is very good and eliminates a lot of variables from our=
 experiments. All of our USRP devices are initialized once and constantly s=
tream data (only some of which is saved). Our phase calibration is a lot mo=
re consistent now.<br></div><div><br></div><div>Thank you again for providi=
ng these oot blocks on Github. My own custom embedded python block was inel=
egant and inconsistent. <br></div><div><br></div><div>Cheers,</div><div><br=
></div><div>Ali<br></div></div><div dir=3D"ltr"><br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 1, 2019 at =
6:19 AM GhostOp14 via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div d=
ir=3D"ltr"><div>Morning everyone, not sure my note yesterday hit the list c=
orrectly so I&#39;m trying again.</div><div><br></div><div>Mark:
 I have a solution for you.=C2=A0 I added a new block yesterday to=20
gr-filerepeater (pybombs or github).=C2=A0 There&#39;s now a state timer bl=
ock=20
that&#39;ll generate a message based on block-specified timing.=C2=A0 Trigg=
er=20
time, cycle time, etc.=C2=A0 gr-filerepeater also has a new file sink block=
=20
I&#39;ve added in the past couple of weeks specifically to address the same=
=20
kind of problem.=C2=A0 You can feed the timer msg out to the new sink msg=
=20
in.=C2=A0 The new block will then key off the state (1/0) in the msg metada=
ta
 and start/stop writing to a file.=C2=A0 You can specify a directory and a=
=20
base file name, then every time a new file write is started it&#39;ll appen=
d
 a timestamp.=C2=A0 Should exactly match up to what you&#39;re trying to=20
accomplish.=C2=A0 I&#39;ll post on the gnuradio list as well since they&#39=
;re=20
gnuradio blocks.</div><div><br></div><div><br></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 29, 2=
019 at 8:24 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 04/29/2=
019 08:08 PM, Mark Wagner via USRP-users wrote:<br>
&gt; Hey all,<br>
&gt;<br>
&gt; I&#39;d like to know how to write short files of streamed USRP data <b=
r>
&gt; periodically using GNUradio. For instance, I&#39;d like the USRP to <b=
r>
&gt; automatically record 5 seconds of data every 10 minutes. It does not <=
br>
&gt; matter to me whether the USRP is constantly on and most of the data is=
 <br>
&gt; being discarded, or if the USRP wakes up every 10 minutes to record <b=
r>
&gt; the data before sleeping. Whichever is easiest to achieve is fine by <=
br>
&gt; me. Does anyone have experience doing this kind of thing?<br>
&gt;<br>
&gt; -Mark<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Mark Wagner<br>
&gt; University of California San Diego<br>
&gt; Electrical and Computer Engineering<br>
&gt;<br>
&gt;<br>
If you&#39;re using Gnu Radio, you can simply use the file sink, and have i=
t <br>
record to &quot;/dev/null&quot; most of the time, then have something (perh=
aps via<br>
=C2=A0 =C2=A0the XMLRPC built-in feature) change the filename to whatever y=
our <br>
desired filename is, and then revert it back to &quot;/dev/null&quot;.<br>
<br>
I think I said the same thing on the discuss-gnuradio mailing list a few <b=
r>
days ago.<br>
<br>
The usrp-users mailing list isn&#39;t the best place to ask Gnu Radio <br>
questions, a question like this, which is inherently radio-type <br>
agnostic, probably<br>
=C2=A0 =C2=A0belongs on the discuss-gnuradio mailng list, because it&#39;s =
more about <br>
&quot;how do I make Gnu Radio dance&quot;.<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000ab803f0587e7b6e4--


--===============1541166764721208777==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1541166764721208777==--

