Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E7C1C1B85
	for <lists+usrp-users@lfdr.de>; Fri,  1 May 2020 19:20:37 +0200 (CEST)
Received: from [::1] (port=49144 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUZKy-0001gg-Vh; Fri, 01 May 2020 13:20:32 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:39283)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1jUZKv-0001Qp-9p
 for usrp-users@lists.ettus.com; Fri, 01 May 2020 13:20:29 -0400
Received: by mail-ot1-f45.google.com with SMTP id m13so3094236otf.6
 for <usrp-users@lists.ettus.com>; Fri, 01 May 2020 10:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZonFZ1nasaUfko39ngZTAIn5YIMyr8K/rNz82LtYwF0=;
 b=tDnGa7rn53dk22aMGgZviueugzOnpOgN8U6K+rPMZX3aKkshEOxagaS1x1bPg8R9yh
 IqEJgLJk79OH/4uVYF+R8GeEtKRXWy+SZtQQRUufoSgQcyF3IdS8oLI9K9dvEj5iz99L
 7Bz1PYka46d4GGbICcpy9nJji+oWlPr1RDv57Gm1hwdVozb3brnC8RnSDEi/dZyKsUpB
 m6gwCNktUf3aXpS1nDkEZRbah6SbB9f1+NzTINP7X0sCEpsQrAMRav3faxdHK9tvskJh
 6uJlxHopglIk/GH6yixxiUkLJQIJmZiS0wIKhFP5CoRAyX2Mhj4VvWkwY+9gvUCtI+J4
 MbeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZonFZ1nasaUfko39ngZTAIn5YIMyr8K/rNz82LtYwF0=;
 b=BWv/y8SZmGRymRUIctq8lUneR3A+mKZw8BQpkoKGL8cBgHczVPKSltfdYJkQ1/WwlW
 kSHHIh2MO0aVd4/60l9OQ9MeeFQ5BWt1T6QrBcF3Lw+2oKjnlkrbe1j5gMJ3SnnSj1u9
 S3vDrzGOPVcEF0aHrirRUzny9reRG6zlz+7Y0oykgOFRIQnyZmCE2VlT1jw4ahtunr/w
 EAEGfx+MmBOXfB0OISp1EMsEVJLsMhbEX0NQuc1BWX8GE/XD/uWAfvedbIijI9Ib6Pl3
 qkXNcubV61YBc0xzD1A3A6wQ4hIJrpt0htapqT7q1td1ptsvJdLSa1HvbROP4BB0JRm+
 vGPg==
X-Gm-Message-State: AGi0Pubxmtx4yU+96jQa50RGO0Pdt8hs2sqYIjtFC0Pntjq7KG2dHfVT
 SxCDeMCZl/Bwss9F3cCrWdv1nB3WEpRLbObPGOslM+Yo
X-Google-Smtp-Source: APiQypLxAEXXjrKQgUe4IuJ7XF9JE5JpjgSCbMd2ny2hWrSYaXsN3ohmfdsLPa+8Ne/StoRlqmeE2w/ov580gdlTXHw=
X-Received: by 2002:a9d:784b:: with SMTP id c11mr4610819otm.28.1588353588608; 
 Fri, 01 May 2020 10:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAB__hTRkiAjJ4H7ehSMHfjsO3NDLpghzjJpnZMZw6-MTVYp8hw@mail.gmail.com>
 <CAFche=gmhz5khOrpufGLN2hW1+SvhW3KA7nfR0mna570BOZs3Q@mail.gmail.com>
 <CAB__hTQkmbb9CR4RCQ4Mhq_YP-VRFP9Tubd3EWJuQkXxN7Er3Q@mail.gmail.com>
 <CAFche=iUdUmipErA3UWyTO3Da990uSiCKcRVrc3r2sNACrOpow@mail.gmail.com>
 <CAB__hTThtrgSDNDdufEEUbeKkxWijHXaiNLDJC=y2QBx1pwBWw@mail.gmail.com>
In-Reply-To: <CAB__hTThtrgSDNDdufEEUbeKkxWijHXaiNLDJC=y2QBx1pwBWw@mail.gmail.com>
Date: Fri, 1 May 2020 12:19:37 -0500
Message-ID: <CAFche=g75+rjH1=XSoLQKceVFxuz+VevJWyBEw36P_4dQ+Xgug@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0737363700084064131=="
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

--===============0737363700084064131==
Content-Type: multipart/alternative; boundary="0000000000006d57b305a4996328"

--0000000000006d57b305a4996328
Content-Type: text/plain; charset="UTF-8"

See my responses below.

On Fri, May 1, 2020 at 11:08 AM Rob Kossler <rkossler@nd.edu> wrote:

> Thanks Wade,
> A few follow up questions:
>
>    - Regarding play_halt(), it sounds like this should never used if you
>    are planning to start playout again (and the replay output feeds the DUC
>    input).  Is this correct?  Or perhaps there is some way to clear the DUC?
>
> My recommendation would be to not call play_halt() if you are planning on
restarting. It will take a little longer to stop because it has to wait to
complete the current memory read and generate the final packet with EOB.
I'd have to look into clearing the DUC, but I think the right thing to do
is to let the replay block stop normally.

>
>    - In the meantime, what is the correct way of using the block in my
>    situation where the replay is connected to the DUC and I want to repeatedly
>    start/stop streaming?  Should I just remove the play_halt() call from the
>    example and just wait for the buffer to flush following the stop streaming
>    command?
>
> Yes, I would just remove the play_halt().

>
>    - Have you seen my other issue regarding use of the Replay Block on
>    the N310 such that you can't connect the 4 Replay block ports to the 4 DUC
>    ports to produce 4 Tx outputs using 3.15?  There is a graph connection /
>    propagation issue that does not like Replay port 2 (3rd  port) connected to
>    DUC_1 port 0.
>
> I'm not aware of any issues with respect to multiple ports. Can you
provide more details on the issue you're seeing?

Rob
>
> On Fri, May 1, 2020 at 11:37 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Hi Rob,
>>
>> I wanted to give you a quick update. I was able to reproduce the issue
>> you found. There were two problems.
>>
>> First, the example you shared calls play_halt() for the replay block each
>> time replay is stopped. This basically stops it as soon as possible, even
>> if that means it can't send a final packet with EOB. The DUC needs the EOB
>> to start/stop cleanly or else the timestamps the DUC generates aren't
>> correct when the next set of data comes through.
>>
>> The second problem I found is part of some known issues that are already
>> fixed in UHD 4.0. I'm going to add these fixes to 3.15 since I know there
>> was a lot of interest in the Replay block in 3.15. So once these fixes
>> appear, you should be able to remove the call the play_halt() and the
>> example will work as expected.
>>
>> Thanks,
>>
>> Wade
>>
>> On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>>
>>> Great. I forgot to mention that I was using an n310.
>>>
>>> On Thu, Apr 23, 2020 at 10:18 PM Wade Fife <wade.fife@ettus.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> Thanks for the example! I'd take a look to see if I can reproduce the
>>>> issue and figure out what's going on. I've been working recently on the
>>>> Replay block, so I'm very interested to understand what's going on.
>>>>
>>>> Thanks,
>>>>
>>>> Wade
>>>>
>>>> On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi,
>>>>> I am having an issue with UHD 3.15.LTS using the replay block.  When I
>>>>> play out my previously stored samples the first time, everything works
>>>>> fine.  But after stopping the first time, if I try to start playing out
>>>>> again, I get a whole bunch of 'Lates' and no RF output.
>>>>>
>>>>> In order to duplicate the problem with an Ettus example, I modified
>>>>> 'replay_samples_from_file' to add a loop and command prompt so that the
>>>>> user could hit <enter> to start playing out while still using <ctrl-c> to
>>>>> stop.  Unfortunately for me, this worked fine and did not show the problem.
>>>>>
>>>>> Next, I further modified the example to place a DUC block in between
>>>>> the Replay block and the Radio.  Now it duplicates the issue perfectly
>>>>> (modified example attached).
>>>>>
>>>>> So, perhaps I need to clear the DUC in some way when stopping the
>>>>> streaming??  But if so, I'm not really sure how to do so.
>>>>>
>>>>> Thanks.
>>>>> Rob
>>>>>
>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>>

--0000000000006d57b305a4996328
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>See my responses below.<br></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 1, 2020 at 11:=
08 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Thanks Wade,<div>A few follow=C2=A0up questions:</div><div><u=
l><li>Regarding play_halt(), it sounds like this should never used if you a=
re planning to start playout again (and the replay output feeds the DUC inp=
ut).=C2=A0 Is this correct?=C2=A0 Or perhaps there is some way to clear the=
 DUC?</li></ul></div></div></blockquote><div>My recommendation would be to =
not call play_halt() if you are planning on restarting. It will take a litt=
le longer to stop because it has to wait to complete the current memory rea=
d and generate the final packet with EOB. I&#39;d have to look into clearin=
g the DUC, but I think the right thing to do is to let the replay block sto=
p normally. =C2=A0 <br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div><ul><li>In the meantime, what is the correct way =
of using the block in my situation where the replay is connected to the DUC=
 and I want to repeatedly start/stop streaming?=C2=A0 Should I just remove =
the play_halt() call from the example and just wait for the buffer to flush=
 following the stop streaming command?</li></ul></div></div></blockquote><d=
iv></div><div>Yes, I would just remove the play_halt(). <br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><ul><li>Have=
 you seen my other issue regarding use of the Replay Block on the N310 such=
 that you can&#39;t connect the 4 Replay block ports to the 4 DUC ports to =
produce 4 Tx outputs using 3.15?=C2=A0 There is a graph connection / propag=
ation issue that does not like Replay port 2 (3rd=C2=A0 port) connected to =
DUC_1 port 0.</li></ul></div></div></blockquote><div>I&#39;m not aware of a=
ny issues with respect to multiple ports. Can you provide more details on t=
he issue you&#39;re seeing?<br></div><div> <br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div>Rob</div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fr=
i, May 1, 2020 at 11:37 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.=
com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Rob,</di=
v><div><br></div><div>I wanted to give you a quick update. I was able to re=
produce the issue you found. There were two problems.</div><div><br></div><=
div>First, the example you shared calls play_halt() for the replay block ea=
ch time replay is stopped. This basically stops it as soon as possible, eve=
n if that means it can&#39;t send a final packet with EOB. The DUC needs th=
e EOB to start/stop cleanly or else the timestamps the DUC generates aren&#=
39;t correct when the next set of data comes through.</div><div><br></div><=
div>The second problem I found is part of some known issues that are alread=
y fixed in UHD 4.0. I&#39;m going to add these fixes to 3.15 since I know t=
here was a lot of interest in the Replay block in 3.15. So once these fixes=
 appear, you should be able to remove the call the play_halt() and the exam=
ple will work as expected.<br></div><div><br></div><div>Thanks,</div><div><=
br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 9:34 PM Rob Kossler &=
lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
><br></div><div><div dir=3D"auto">Great. I forgot to mention that I was usi=
ng an n310.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Apr 23, 2020 at 10:18 PM Wade Fife &lt;<a href=3D"=
mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi Rob,</div><div><br></div><div>Thanks for the example! I&#3=
9;d take a look to see if I can reproduce the issue and figure out what&#39=
;s going on. I&#39;ve been working recently on the Replay block, so I&#39;m=
 very interested to understand what&#39;s going on.<br></div><div><br></div=
><div>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Thu, Apr 23, 2020 at 1:36 PM Rob Kossler via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"></blockquote></div><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr">Hi,<br><div>I am having an issue with UHD 3.15.LTS using the re=
play block.=C2=A0 When I play out my previously stored samples the first ti=
me, everything works fine.=C2=A0 But after stopping the first time, if I tr=
y to start playing out again, I get a whole bunch of &#39;Lates&#39; and no=
 RF output.</div><div><br></div><div>In order to duplicate the problem with=
 an Ettus example, I modified &#39;replay_samples_from_file&#39; to add a l=
oop and command prompt so that the user could hit &lt;enter&gt; to start pl=
aying out while still using &lt;ctrl-c&gt; to stop.=C2=A0 Unfortunately for=
 me, this worked fine and did not show the problem.</div><div><br></div><di=
v>Next, I further modified=C2=A0the example to place a DUC block in between=
 the Replay block and the Radio.=C2=A0 Now it duplicates the issue perfectl=
y (modified example attached).</div><div><br></div><div>So, perhaps I need =
to clear the DUC in some way when stopping the streaming??=C2=A0 But if so,=
 I&#39;m not really sure how to do so.</div><div><br></div><div>Thanks.</di=
v><div>Rob</div></div></blockquote></div><div class=3D"gmail_quote"><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
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
</blockquote></div></div>

--0000000000006d57b305a4996328--


--===============0737363700084064131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0737363700084064131==--

