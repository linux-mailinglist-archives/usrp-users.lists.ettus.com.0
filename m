Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D764D3AA8
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 20:56:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 39435385000
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 14:56:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Qz2ODbwT";
	dkim-atps=neutral
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 0FD7338454F
	for <usrp-users@lists.ettus.com>; Wed,  9 Mar 2022 14:55:08 -0500 (EST)
Received: by mail-yb1-f176.google.com with SMTP id e186so6634753ybc.7
        for <usrp-users@lists.ettus.com>; Wed, 09 Mar 2022 11:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GLMchDgunbhe0z0YhGKBGHIK3QepmqAhs9FAtOY3sEA=;
        b=Qz2ODbwT7l+cI8twaZWESzVFAH65qSmgAj9zsY95GhH1cxATDRKI+1Z0LkYxTf0SbA
         IrrkL/33Ph8Hfzes1uZXzm4nMjJ+VxDImTyV7Rf5FskHGxUJVdh2Yf/AqNNCb51lOJME
         EJkdszEPjwAJMVUqGb3+MLneXDu/QKDfkUGC1cGTjlk3tEFRdMXycnJofq9zl5Pbko3n
         mA/RZzG4jJo3vcbz+xE8d6lE6tqd9SaLOBx3cwOS//qQC4oFnambLxtLZl8PA38NkDIu
         WsFE9tuooNZCxFXhWPrhEI8OS4iOF0wXPUUttEaz5xr1UuN3eGEaczlNdR2euXfHdVxm
         +Wog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GLMchDgunbhe0z0YhGKBGHIK3QepmqAhs9FAtOY3sEA=;
        b=10BVnM3gxIMrMv2zkUFnS+5R6GdAE96QWUQ3rXvNlN6dQ29Tie8ZJfdHRYQkU49Qcg
         D65s8xVA4wUfbKivDAXvRdiFEURgvOKoNLDSOi7sJ8lNEqmNu4sgqVh8Cd2UJAWlxjKg
         3g//k69dNA/JXE/E+rE6DPZO3w3AFz28KIdXCVzOn+/qd/GsmQYswKSjRBa+6UkvLa4P
         LGG2WIBnwXPvdekeGD9iwvUVge6AJw+wRJ47La9sx5DLy2fEkIxGHxRKtzBjr623Voky
         6p6hEPw7E7IarB/zNoYeTOp0u6gxN4PgIERxxeXGBuaC2ANoIQDm2O4M1Rn4c6cFCPkH
         7zHQ==
X-Gm-Message-State: AOAM530Db6y6vFulu7zWXZ/C3nym/MvmPuno2I281S6oAnrjqiNtMx+j
	yDJCVV/mWXENpnSvvE9XEgrMbScamDA9dNDkJQS38AjrlNJCrqPc
X-Google-Smtp-Source: ABdhPJzdlI4Y4elFVo+pWnB0ZUcn4J+P+tKB+u6vY3GeT27HbnNr3MB1acKN5KWPt5+xn1RiOALL32PtZP+dlT0G4nE=
X-Received: by 2002:a25:1f87:0:b0:623:ed72:ff2a with SMTP id
 f129-20020a251f87000000b00623ed72ff2amr1245957ybf.96.1646855708373; Wed, 09
 Mar 2022 11:55:08 -0800 (PST)
MIME-Version: 1.0
References: <BY5PR09MB5491FC142DABDFF75F0B1DDDD9089@BY5PR09MB5491.namprd09.prod.outlook.com>
 <12659_1646701030_6226A9E6_12659_631_1_CAFche=hozireUZY6Q-jNOqZpa9yECJZxhw2spDyXdw6fgz7XWA@mail.gmail.com>
 <BY5PR09MB5491F4348FF8B8CE4917163BD90A9@BY5PR09MB5491.namprd09.prod.outlook.com>
In-Reply-To: <BY5PR09MB5491F4348FF8B8CE4917163BD90A9@BY5PR09MB5491.namprd09.prod.outlook.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 9 Mar 2022 13:54:52 -0600
Message-ID: <CAFche=gyUm-x3rJNcxsUUGYbxswP0SLC=bAAiTTnfaV6P-S3FA@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: 62TNSOY2RINH3UK6A4PEBWSUNTMU45XE
X-Message-ID-Hash: 62TNSOY2RINH3UK6A4PEBWSUNTMU45XE
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXT] Re: RFNOC dropping packets
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/62TNSOY2RINH3UK6A4PEBWSUNTMU45XE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2705653679607020077=="

--===============2705653679607020077==
Content-Type: multipart/alternative; boundary="0000000000007e86d105d9ce79d7"

--0000000000007e86d105d9ce79d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For packet sizes, anything over 1k should be pretty well tested. Again, it
shouldn't matter, but just a thought that crossed my mind. You could even
try going from 8 samples to 16 samples maybe as a test.

The flush logic is for clearing things out between sessions. In some cases,
you can have data left over after a session ends and this logic attempts to
clear out any stale data before starting a new session.

The stream endpoint should leave the sequence numbers intact. So I would
think they should be there by the time they get to the radio, although the
radio doesn't need them. You could use the sequence numbers to look for
lost packets. Personally, I like that you inserted a packet count into your
datastream. That's the kind of thing I typically do, because then I know in
advance what number to look for, and it makes it easy to write a checker to
look for gaps.

Based on your experiment, I wonder if something is wrong with the flow
control logic. In other words, maybe a tready/tvalid handshake isn't
correct. You could try simulating your block with backpressure to make sure
it works under varying conditions. Or at least review the tready/tvalid
logic to make sure it looks correct in your block.

Thanks,

Wade

On Wed, Mar 9, 2022 at 8:19 AM Jeffrey P Long <jplong@mitre.org> wrote:

> Wade-
>
>
>
> Thanks for writing back.
>
>
>
> Yes it=E2=80=99s a very simple setup with as you described
> host->SEP->tx_core->Radio.
>
>
>
> I did actually have it in my plan to update to 4.1 since I have a X410 an=
d
> would like to target that at some point soon. Its not something I can do
> immediately but probably in the next few weeks.
>
>
>
> Yes I could look at packing them together or even building bigger packets
> that I throw away the unused data. My rates are pretty low as you can
> discern below, about 5 KBps from host to tx_core. What would be a min,
> pretty well tested packet size that you would suggest?
>
>
>
> I did chipscope the chain but honestly there is a lot of hand off from
> ethernet down to my block that I would not understand what I was looking
> for. I did try to look at the flush controls in the noc_shell to see if
> they did something. I was guessing based on the name.
>
>
>
> Is something getting dangerously high in terms of a FIFO upstream and it
> has some auto flush feature to keep a logjam or overflow from happening?
>
>
>
> By the way what happened to sequence numbers? It does not seem like they
> make it down to the radio core anymore for obvious reasons. Are they just
> from host to SEP? Maybe I can track that?
>
>
>
> On a side note, for lack of anything better to try, I did insert my own
> fifo right before my tx_core and connected the fifo level to a register s=
o
> I could read it. Then within my send loop I monitor this level. Let it fi=
ll
> up halfway and then make a decision on each send whether to send a packet
> or go to sleep for a cycle based on keeping it near this halfway point.
> This keeps me from ever losing packets and works like a charm but should
> not be needed. This points to a backup issue upstream somewhere.
>
>
>
> Once I switch to UHD 4.1 I will update this thread with results from
> testing under that.
>
>
>
> Thanks
>
> Jeff
>
>
>
> *From:* Wade Fife <wade.fife@ettus.com>
> *Sent:* Monday, March 7, 2022 7:57 PM
> *To:* Jeffrey P Long <jplong@mitre.org>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* [EXT] Re: [USRP-users] RFNOC dropping packets
>
>
>
> Hi Jeff,
>
>
>
> Can you describe the dataflow of your RFNoC graph (which blocks you're
> using and how they're connected)? For example, is it: host -> SEP -> Your
> Block -> Radio?
>
>
>
> Could you try the latest version of UHD (v4.1.0.5)? There were many bug
> fixes since the initial release of 4.0. You may also want to regenerate
> your block to get a new noc_shell.
>
>
>
> Those are very small packets (8 32-bit samples). That should be fine, but
> maybe there's a corner case with really short packets. Maybe you could tr=
y
> coalescing them into larger packets?
>
>
>
> If I were debugging this, I'd use chipscope, maybe with some checker logi=
c
> like you described, to look at the data flowing from the ethernet interfa=
ce
> and follow that path to your block to see where the packets are getting
> dropped. It would also confirm that the packets are making it into the
> FPGA. But first I think updating to the latest version is a good idea so
> we're not chasing a bug that's already been fixed.
>
>
>
> Thanks,
>
>
>
> Wade
>
>
>
> On Mon, Mar 7, 2022 at 10:17 AM Jeffrey P Long <jplong@mitre.org> wrote:
>
> Hi-
>
>
>
> I have determined that somewhere upstream from my custom RFNOC component
> the fabric is intermittently dropping a fixed number of packets.
>
>
>
> I have a custom transmit waveform encapsulated in a single RFNOC
> component. This waveform component effectively takes about 8 32-bit sampl=
es
> of user data and produces an entire transmit burst of close to 5 msec in
> length at a sample rate of 50 MHz. Therefore, a fairly large =E2=80=9Cups=
ampling=E2=80=9D
> operation for a RFNOC block. This is a timed transmission, so I have
> interface logic that translates the CHDR info and single EOB to a series =
of
> packets with a timestamp on the first and the EOB set on the last packet
> along with the appropriate tlast set along the way. I can verify this wor=
ks
> well and will run without issues for about a few minutes on startup. I ha=
ve
> a similar RX component that receives this transmission in an analog
> loopback approach so I can verify the transmission. I have also inserted =
a
> packet number in my transmit data and have a checker(in the HDL) on the
> transmit side(upstream of my component) to check when there is an out of
> sequence happening. In chipscope I have it triggering when it happens so =
I
> can observe this behavior independent of the RX process.
>
>
>
> Setup: Ubuntu 20 LTS, E320, UHD 4.0.0.0-122-g75f2ba94
>
>
>
> Here are some things I have observed:
>
>
>
>    1. It will run without an issue for about 1-2 mins on startup. Clean
>    start or re-run does not matter.
>
>
>
>    1. It is always 34 source packets that are missing (each is 8 32 bit
>    samples in length) each time it drops.
>
>
>
>    1. This never happens back to back so it looks like something is
>    overflowing upstream however it is not perfectly periodic.
>
>
>
>    1. If I replace my core tx waveform processing with a simple fifo and
>    allow the 8 sample packets to flow through my processing(no upsampling=
) it
>    never drops anything. Obviously the large 1 to many and resultant stal=
ling
>    of the upstream is not making things happy.
>
>
>
>    1. This continues to happen if I totally disable the RX processing.
>
>
>
>    1. There is no indication of underruns or lates or other errors coming
>    from the tx_core downstream of my component. I verified also by chipsc=
oping
>    that component and looking for anything.
>
>
>
>
>
> Some things I have tried:
>
>
>
>    1. I did increase the (info, pyld) fifo sizes on the input side of my
>    components noc_shell. Did not change the behavior. I did not touch the
>    stream endpoint buffers.
>    2. I am generally running this in host mode however I did try cross
>    compiling the app and running embedded mode on the E320. Interesting
>    observation is that it then becomes exactly 33 packets that are lost e=
ach
>    time (weird or telling?).
>    3. If I insert usleeps in the while loop pushing down the data
>    (txstream->send()) I can change the behavior so that it happens less
>    frequently, takes longer to happen the first time, and the size of the
>    number lost can change from the 34 normally. In my HDL I increment the
>    timestamp by 50 msec so the obvious perfect sleep would be something l=
ike
>    50 msec minus the time rest of the code can take. Clearly this is hard=
 to
>    tune. Just setting 50 msec eventually causes a LLLLLLate condition. Th=
ere
>    is a sweet spot somewhere but without a RTOS this is a waste of time a=
nd
>    would not be the right way to fix this.
>
>
>
> Any help or insight (things to try) would be greatly appreciated. I am ou=
t
> of ideas. My final idea would be to put my own FIFO just in front with a
> level indicator. Fill it up halfway and then monitor it with a register t=
o
> keep it happy. Assuming I could keep up with this polling approach it
> should keep it happy unless there is a real bug upstream and someone is n=
ot
> obeying AXIS protocol. I would think this would be unnecessary however
> since RFNOC should not allow something like this to happen.
>
>
>
> Thanks in advance,
> Jeff Long
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>

--0000000000007e86d105d9ce79d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For packet sizes, anything over 1k should be pretty w=
ell tested. Again, it shouldn&#39;t matter, but just a thought that crossed=
 my mind. You could even try going from 8 samples to 16 samples maybe as a =
test.<br></div><br>The flush logic is for clearing things out between sessi=
ons. In some cases, you can have data left over after a session ends and th=
is logic attempts to clear out any stale data before starting a new session=
.<br><div><br></div><div>The stream endpoint should leave the sequence numb=
ers intact. So I would think they should be there by the time they get to t=
he radio, although the radio doesn&#39;t need them. You could use the seque=
nce numbers to look for lost packets. Personally, I like that you inserted =
a packet count into your datastream. That&#39;s the kind of thing I typical=
ly do, because then I know in advance what number to look for, and it makes=
 it easy to write a checker to look for gaps.<br></div><br><div>Based on yo=
ur experiment, I wonder if something is wrong with the flow control logic. =
In other words, maybe a tready/tvalid handshake isn&#39;t correct. You coul=
d try simulating your block with backpressure to make sure it works under v=
arying conditions. Or at least review the tready/tvalid logic to make sure =
it looks correct in your block.<br></div><div><br></div><div>Thanks,</div><=
div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 9, 2022 at 8:19 AM Jeffrey P L=
ong &lt;<a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div style=3D"overflow-wrap: break-word;" lang=3D"EN-US">
<div class=3D"gmail-m_3632392220208539861WordSection1">
<p class=3D"MsoNormal">Wade-<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks for writing back.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Yes it=E2=80=99s a very simple setup with as you des=
cribed host-&gt;SEP-&gt;tx_core-&gt;Radio.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I did actually have it in my plan to update to 4.1 s=
ince I have a X410 and would like to target that at some point soon. Its no=
t something I can do immediately but probably in the next few weeks.<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Yes I could look at packing them together or even bu=
ilding bigger packets that I throw away the unused data. My rates are prett=
y low as you can discern below, about 5 KBps from host to tx_core. What wou=
ld be a min, pretty well tested packet
 size that you would suggest?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I did chipscope the chain but honestly there is a lo=
t of hand off from ethernet down to my block that I would not understand wh=
at I was looking for. I did try to look at the flush controls in the noc_sh=
ell to see if they did something.
 I was guessing based on the name. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is something getting dangerously high in terms of a =
FIFO upstream and it has some auto flush feature to keep a logjam or overfl=
ow from happening?
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">By the way what happened to sequence numbers? It doe=
s not seem like they make it down to the radio core anymore for obvious rea=
sons. Are they just from host to SEP? Maybe I can track that?<u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">On a side note, for lack of anything better to try, =
I did insert my own fifo right before my tx_core and connected the fifo lev=
el to a register so I could read it. Then within my send loop I monitor thi=
s level. Let it fill up halfway and
 then make a decision on each send whether to send a packet or go to sleep =
for a cycle based on keeping it near this halfway point. This keeps me from=
 ever losing packets and works like a charm but should not be needed. This =
points to a backup issue upstream
 somewhere.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Once I switch to UHD 4.1 I will update this thread w=
ith results from testing under that.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> Wade Fife &lt;<a href=3D"mailto:wade.fi=
fe@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; <br>
<b>Sent:</b> Monday, March 7, 2022 7:57 PM<br>
<b>To:</b> Jeffrey P Long &lt;<a href=3D"mailto:jplong@mitre.org" target=3D=
"_blank">jplong@mitre.org</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> [EXT] Re: [USRP-users] RFNOC dropping packets<u></u><u></u>=
</p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Hi Jeff,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Can you describe the dataflow of your RFNoC graph (w=
hich blocks you&#39;re using and how they&#39;re connected)? For example, i=
s it: host -&gt; SEP -&gt; Your Block -&gt; Radio?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Could you try the latest version of UHD (v4.1.0.5)? =
There were many bug fixes since the initial release of 4.0. You may also wa=
nt to regenerate your block to get a new noc_shell.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Those are very small packets (8 32-bit samples). Tha=
t should be fine, but maybe there&#39;s a corner case with really short pac=
kets. Maybe you could try coalescing them into larger packets?<u></u><u></u=
></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">If I were debugging this, I&#39;d use chipscope, may=
be with some checker logic like you described, to look at the data flowing =
from the ethernet interface and follow that path to your block to see where=
 the packets are getting dropped. It would
 also confirm that the packets are making it into the FPGA. But first I thi=
nk updating to the latest version is a good idea so we&#39;re not chasing a=
 bug that&#39;s already been fixed.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Wade<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, Mar 7, 2022 at 10:17 AM Jeffrey P Long &lt;<=
a href=3D"mailto:jplong@mitre.org" target=3D"_blank">jplong@mitre.org</a>&g=
t; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0in 0in 0in 6pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal">Hi-<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I have determined that somewhere upstream from my cu=
stom RFNOC component the fabric is intermittently dropping a fixed number o=
f packets.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">I have a custom transmit waveform encapsulated in a =
single RFNOC component. This waveform component effectively takes about 8 3=
2-bit samples of user data and produces an entire
 transmit burst of close to 5 msec in length at a sample rate of 50 MHz. Th=
erefore, a fairly large =E2=80=9Cupsampling=E2=80=9D operation for a RFNOC =
block. This is a timed transmission, so I have interface logic that transla=
tes the CHDR info and single EOB to a series of
 packets with a timestamp on the first and the EOB set on the last packet a=
long with the appropriate tlast set along the way. I can verify this works =
well and will run without issues for about a few minutes on startup. I have=
 a similar RX component that receives
 this transmission in an analog loopback approach so I can verify the trans=
mission. I have also inserted a packet number in my transmit data and have =
a checker(in the HDL) on the transmit side(upstream of my component) to che=
ck when there is an out of sequence
 happening. In chipscope I have it triggering when it happens so I can obse=
rve this behavior independent of the RX process.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Setup: Ubuntu 20 LTS, E320, UHD 4.0.0.0-122-g75f2ba9=
4<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Here are some things I have observed:<u></u><u></u><=
/p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"1">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
It will run without an issue for about 1-2 mins on startup. Clean start or =
re-run does not matter.<u></u><u></u></li></ol>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"2">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
It is always 34 source packets that are missing (each is 8 32 bit samples i=
n length) each time it drops.<u></u><u></u></li></ol>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"3">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
This never happens back to back so it looks like something is overflowing u=
pstream however it is not perfectly periodic.<u></u><u></u></li></ol>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"4">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
If I replace my core tx waveform processing with a simple fifo and allow th=
e 8 sample packets to flow through my processing(no upsampling) it never dr=
ops anything. Obviously the large 1 to many and resultant stalling of the u=
pstream is not making things happy.<u></u><u></u></li></ol>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"5">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
This continues to happen if I totally disable the RX processing.<u></u><u><=
/u></li></ol>
<p class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpar=
agraph">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"6">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
There is no indication of underruns or lates or other errors coming from th=
e tx_core downstream of my component. I verified also by chipscoping that c=
omponent and looking for anything.<u></u><u></u></li></ol>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Some things I have tried:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<ol type=3D"1" start=3D"1">
<li class=3D"gmail-m_3632392220208539861gmail-m1560697624454512504msolistpa=
ragraph">
I did increase the (info, pyld) fifo sizes on the input side of my componen=
ts noc_shell. Did not change the behavior. I did not touch the stream endpo=
int buffers.<u></u><u></u></li><li class=3D"gmail-m_3632392220208539861gmai=
l-m1560697624454512504msolistparagraph">
I am generally running this in host mode however I did try cross compiling =
the app and running embedded mode on the E320. Interesting observation is t=
hat it then becomes exactly 33 packets that are lost each time (weird or te=
lling?).<u></u><u></u></li><li class=3D"gmail-m_3632392220208539861gmail-m1=
560697624454512504msolistparagraph">
If I insert usleeps in the while loop pushing down the data (txstream-&gt;s=
end()) I can change the behavior so that it happens less frequently, takes =
longer to happen the first time, and the size of the number lost can change=
 from the 34 normally. In my HDL I
 increment the timestamp by 50 msec so the obvious perfect sleep would be s=
omething like 50 msec minus the time rest of the code can take. Clearly thi=
s is hard to tune. Just setting 50 msec eventually causes a LLLLLLate condi=
tion. There is a sweet spot somewhere
 but without a RTOS this is a waste of time and would not be the right way =
to fix this.<u></u><u></u></li></ol>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Any help or insight (things to try) would be greatly=
 appreciated. I am out of ideas. My final idea would be to put my own FIFO =
just in front with a level indicator. Fill it up halfway
 and then monitor it with a register to keep it happy. Assuming I could kee=
p up with this polling approach it should keep it happy unless there is a r=
eal bug upstream and someone is not obeying AXIS protocol. I would think th=
is would be unnecessary however
 since RFNOC should not allow something like this to happen.<u></u><u></u><=
/p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Thanks in advance,<br>
Jeff Long<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000007e86d105d9ce79d7--

--===============2705653679607020077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2705653679607020077==--
