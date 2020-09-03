Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F1125C9A0
	for <lists+usrp-users@lfdr.de>; Thu,  3 Sep 2020 21:42:30 +0200 (CEST)
Received: from [::1] (port=57368 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDv7s-0007Zv-L3; Thu, 03 Sep 2020 15:42:28 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:33383)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <vesathya@eng.ucsd.edu>)
 id 1kDv7m-0007TC-Pi
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 15:42:22 -0400
Received: by mail-oi1-f174.google.com with SMTP id 3so4336982oih.0
 for <usrp-users@lists.ettus.com>; Thu, 03 Sep 2020 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=gVtfnHK0xdi/WAMeVwUPvWA5ZnoeaqZNR18d7iIUeqc=;
 b=g/z0/Fwt/DzMM3wQ0JxQ+66uUQrpgExF2Q9VB6oEP0R21IB71pdbuSVtSc4RtYJhnJ
 XT8+H8rhEien/d1WT1+Szeo0yD16ZV5VFm/hipY/2xz6+iyrZtydIlReCPM0C9wwAuJY
 bzOz3SVTUM4vZGNQbw8IBJBkP6ziHl54gstYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=gVtfnHK0xdi/WAMeVwUPvWA5ZnoeaqZNR18d7iIUeqc=;
 b=Z30JVA+KGV3mRQCNEMEWaNij8Z0if13lf++IHejgWO1fMhWtXg1aTthEyvBaSwDxHt
 VNAIVQ/xeLbGPCe1dbijGcgz4j3Hbf0p1HhwXOOV9GPaY6drYZEXSHEcsRwaK6zOghpK
 7lA35vS4GgtmW7SAqk/5QmeScUySAOWyK27Jbk62r4V9cONlvNHCS+wSs9KnvYcpKlCb
 ZF8xXdh4v3iiPCvHzNQNORmBMSq0q2TiSioC9M8QG0Jc6cLovdlGjn+UuBr6Z/HmClS5
 svK09Fm7VOHwWPBXK6Zo9J8eQWOW2c+Eql5CMLZERYsK9FlDbp8cpXhXfQ4c1osKCwHM
 fLjg==
X-Gm-Message-State: AOAM533xYaUtY7jzbWLvutL6igjmYcpygt1Uju4l5w1P96RlRwn+VUFB
 M4rrSseObYF6qySoLjNWFU0Qk5zRXvEcXluvDhEx8Q==
X-Google-Smtp-Source: ABdhPJzqYJ1EJXyJzwcvCCDHMooSXDI6uYym+gzTDeurTHonlvLS5EwoFtOWo6nomHvGfbQDz84uMiKNZw0WXzcAKck=
X-Received: by 2002:aca:a88e:: with SMTP id r136mr2978603oie.13.1599162101733; 
 Thu, 03 Sep 2020 12:41:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:3ec8:0:0:0:0:0 with HTTP;
 Thu, 3 Sep 2020 12:41:41 -0700 (PDT)
In-Reply-To: <CAGNhwTPhAab289kk_CAV2q2-PCvno44v=CuxMjv2ukrcEmNcVA@mail.gmail.com>
References: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
 <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
 <fd998121-4494-a528-71ac-0b12a52f8311@eurecom.fr>
 <CAGNhwTPhAab289kk_CAV2q2-PCvno44v=CuxMjv2ukrcEmNcVA@mail.gmail.com>
Date: Thu, 3 Sep 2020 12:41:41 -0700
Message-ID: <CANYmVj8aSNhizY0h1akgQzMJfAyR2J0bW9Zw7zLLaof+jgvV+g@mail.gmail.com>
To: Michael Dickens <michael.dickens@ettus.com>
Subject: Re: [USRP-users] Link going up and down periodically every 45
 seconds on USRP N310
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
From: Venkatesh Sathyanarayanan via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Venkatesh Sathyanarayanan <vesathya@eng.ucsd.edu>
Cc: Ankush Jolly <ajolly@eng.ucsd.edu>, USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0978546785379115615=="
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

--===============0978546785379115615==
Content-Type: multipart/alternative; boundary="000000000000032f9505ae6df1b3"

--000000000000032f9505ae6df1b3
Content-Type: text/plain; charset="UTF-8"

Thanks a lot Michael and cedric for taking time to answer my questions.. I
will try to stop the network manager and see if that helps.

Regards
Venkatesh

On Thursday, September 3, 2020, Michael Dickens <michael.dickens@ettus.com>
wrote:

> In my experience, this happens when the networking isn't stable, which can
> be for all sorts of reasons:
>
> * connectors / cables are flaky;
>
> * host SW configuration isn't quite correct;
>
> * actual NIC has issues, HW or FW / configuration;
>
> * USRP NIC has issues ... very rare, but it can happen;
>
> * USRP FPGA has issues ... again rare, but it can happen;
>
> * USRP filesystem has issues ... could be the FS itself, or
> configuration ... this happens sometimes & is usually resolved by
> overwriting the whole SDcard filesystem & starting from "go" there.
>
> If you're Linux has the network manager, that doesn't help things since it
> thinks it knows better than you what to be doing.
>
> There is no "one size fits all" answer unfortunately; just investigate the
> networking & make sure all of the parts are functional.
>
> Hope this is useful! - MLD
>
> On Thu, Sep 3, 2020 at 3:30 AM Cedric Roux via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> maybe network manager (if you have that thing running) on the
>> computer doing funny things with the interface? I had this
>> issue with some 4g dongles in the past.
>>
>> On 2020-09-03 01:01, Venkatesh Sathyanarayanan via USRP-users wrote:
>> > Hi,
>> >
>> > Small correction:
>> >
>> > *Questions:*
>> > I notice that the test stops when the link goes down every 45 seconds.
>> > This happens for all types of tests(with and without GUI).
>> > Kindly let me know how to debug this - i.e. why the link goes down
>> every
>> > 45 seconds?
>> >
>> > Regards
>> > Venkatesh
>> >
>> > On Wed, Sep 2, 2020 at 3:10 PM Venkatesh Sathyanarayanan
>> > <vesathya@eng.ucsd.edu <mailto:vesathya@eng.ucsd.edu>> wrote:
>> >
>> >     Hi,
>> >
>> >
>> >     *Setup details:*
>> >     I am using an USRP N310 and I have the host computer connected to
>> >     the USRP via SFP cable. I additionally have a serial connection
>> >     between the two and have a screen session running.
>> >
>> >     *Observation:*
>> >     On the screen session, I noticed the following messages:
>> >     [ 2151.041079] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2196.961090] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2242.881106] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2288.801114] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2425.441143] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2471.361159] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     [ 2517.281166] nixge 40000000.ethernet sfp0: Link is Down
>> >     [ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up -
>> >     10Gbps/Full - flow control off
>> >     ...........................................................
>> ............................................................
>> ...................................................
>> >     ...........................................................
>> ............................................................
>> ...................................................
>> >
>> >     ...........................................................
>> ............................................................
>> ...................................................
>> >     ...........................................................
>> ............................................................
>> ...................................................
>> >
>> >     *Questions:*
>> >     When I have a GNU radio GRC running with an active GUI displaying
>> >     the spectrum, I see that it halts at the time when the link goes
>> down.
>> >     When I run a file with no GUI active - say IQ samples saved to a
>> >     file, things running in the background and I do not see any
>> >     interruption.
>> >
>> >      1. Kindly let me know why I am seeing this issue of link going down
>> >         every 45 seconds and
>> >      2. also if this could potentially affect my tests (all my tests are
>> >         without any GUI.)
>> >
>> >
>> >     Regards
>> >     Venkatesh
>> >
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--000000000000032f9505ae6df1b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot Michael and cedric for taking time to answer my questions.. I =
will try to stop the network manager and see if that helps.<div><br></div><=
div>Regards</div><div>Venkatesh<br><br>On Thursday, September 3, 2020, Mich=
ael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.dicken=
s@ettus.com</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r">In my experience, this happens when the networking isn&#39;t stable, whi=
ch can be for all sorts of reasons:<div><br></div><div>* connectors / cable=
s are flaky;</div><div><br></div><div>* host SW configuration isn&#39;t qui=
te correct;</div><div><br></div><div>* actual NIC has issues, HW or FW / co=
nfiguration;</div><div><br></div><div>* USRP NIC has issues ... very rare, =
but it can happen;</div><div><br></div><div>* USRP FPGA has issues ... agai=
n rare, but it can happen;</div><div><br></div><div><div>* USRP filesystem =
has issues ... could be the FS itself, or configuration=C2=A0... this happe=
ns sometimes &amp; is usually=C2=A0resolved by overwriting the whole SDcard=
 filesystem &amp; starting from &quot;go&quot; there.</div><div><br></div><=
div></div></div><div>If you&#39;re Linux has the network manager, that does=
n&#39;t help things since it thinks it knows better than you what to be doi=
ng.</div><div><br></div><div>There is no &quot;one size fits all&quot; answ=
er unfortunately; just investigate the networking &amp; make sure all of th=
e parts are functional.</div><div><br></div><div>Hope this is useful! - MLD=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Sep 3, 2020 at 3:30 AM Cedric Roux via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">maybe network manager (if you have that thing running) on the<br>
computer doing funny things with the interface? I had this<br>
issue with some 4g dongles in the past.<br>
<br>
On 2020-09-03 01:01, Venkatesh Sathyanarayanan via USRP-users wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; Small correction:<br>
&gt; <br>
&gt; *Questions:*<br>
&gt; I notice that the test stops when the link goes down every 45 seconds.=
 <br>
&gt; This happens for all types of tests(with and without GUI).<br>
&gt; Kindly let me know how to debug this - i.e. why the link goes down eve=
ry <br>
&gt; 45 seconds?<br>
&gt; <br>
&gt; Regards<br>
&gt; Venkatesh<br>
&gt; <br>
&gt; On Wed, Sep 2, 2020 at 3:10 PM Venkatesh Sathyanarayanan <br>
&gt; &lt;<a href=3D"mailto:vesathya@eng.ucsd.edu" target=3D"_blank">vesathy=
a@eng.ucsd.edu</a> &lt;mailto:<a href=3D"mailto:vesathya@eng.ucsd.edu" targ=
et=3D"_blank">vesathya@eng.ucsd.edu</a>&gt;<wbr>&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*Setup details:*<br>
&gt;=C2=A0 =C2=A0 =C2=A0I am using an USRP N310 and I have the host compute=
r connected to<br>
&gt;=C2=A0 =C2=A0 =C2=A0the USRP via SFP cable. I additionally have a seria=
l connection<br>
&gt;=C2=A0 =C2=A0 =C2=A0between the two and have a screen session running.<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*Observation:*<br>
&gt;=C2=A0 =C2=A0 =C2=A0On the screen session, I noticed the following mess=
ages:<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2151.041079] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2195.841088] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2196.961090] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2241.761098] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2242.881106] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2287.681109] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2288.801114] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2333.601129] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2334.721127] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2379.521132] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2380.641137] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2425.441143] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2426.561149] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2471.361159] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2472.481166] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2517.281166] nixge 40000000.ethernet sfp0: Link i=
s Down<br>
&gt;=C2=A0 =C2=A0 =C2=A0[ 2518.401171] nixge 40000000.ethernet sfp0: Link i=
s Up -<br>
&gt;=C2=A0 =C2=A0 =C2=A010Gbps/Full - flow control off<br>
&gt;=C2=A0 =C2=A0 =C2=A0.............................<wbr>.................=
.............<wbr>..............................<wbr>......................=
........<wbr>..............................<wbr>.....................<br>
&gt;=C2=A0 =C2=A0 =C2=A0.............................<wbr>.................=
.............<wbr>..............................<wbr>......................=
........<wbr>..............................<wbr>.....................<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0.............................<wbr>.................=
.............<wbr>..............................<wbr>......................=
........<wbr>..............................<wbr>.....................<br>
&gt;=C2=A0 =C2=A0 =C2=A0.............................<wbr>.................=
.............<wbr>..............................<wbr>......................=
........<wbr>..............................<wbr>.....................<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0*Questions:*<br>
&gt;=C2=A0 =C2=A0 =C2=A0When I have a GNU radio GRC running with an active =
GUI displaying<br>
&gt;=C2=A0 =C2=A0 =C2=A0the spectrum, I see that it halts at the time when =
the link goes down.<br>
&gt;=C2=A0 =C2=A0 =C2=A0When I run a file with no GUI active - say IQ sampl=
es saved to a<br>
&gt;=C2=A0 =C2=A0 =C2=A0file, things running in the background and I do not=
 see any<br>
&gt;=C2=A0 =C2=A0 =C2=A0interruption.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 1. Kindly let me know why I am seeing this issue o=
f link going down<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0every 45 seconds and<br>
&gt;=C2=A0 =C2=A0 =C2=A0 2. also if this could potentially affect my tests =
(all my tests are<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0without any GUI.)<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0Venkatesh<br>
&gt; <br>
&gt; <br>
&gt; ______________________________<wbr>_________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/<wbr>m=
ailman/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
&gt; <br>
<br>
______________________________<wbr>_________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/<wbr>mailma=
n/listinfo/usrp-users_<wbr>lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000032f9505ae6df1b3--


--===============0978546785379115615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0978546785379115615==--

