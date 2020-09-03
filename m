Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF4125CE26
	for <lists+usrp-users@lfdr.de>; Fri,  4 Sep 2020 00:58:52 +0200 (CEST)
Received: from [::1] (port=58778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kDyBv-0003Tt-6S; Thu, 03 Sep 2020 18:58:51 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:36618)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <vesathya@eng.ucsd.edu>)
 id 1kDyBq-0003Kp-Jd
 for usrp-users@lists.ettus.com; Thu, 03 Sep 2020 18:58:46 -0400
Received: by mail-ot1-f42.google.com with SMTP id 109so4269958otv.3
 for <usrp-users@lists.ettus.com>; Thu, 03 Sep 2020 15:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eng.ucsd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sgDnMRwzeVFe7bjXZuNyzA7OMBVFuouf4IBOs4h4qVc=;
 b=bE85PFoeBJ2h24Mv8NVdZwN2LFG3zl4YYJa82YbKiH9G9gy1ESO3NB63sY8/o+PO6P
 208jUiwhaeS1qzgpRFDovb0JIVOUKgNqXAC0fEgsV3Q+zYijhIVYg+jjY9Nz/DbiTuvd
 q4bh7u9ZjgqVRWvocy2Wz3emyPm+ZMrkHQhpo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sgDnMRwzeVFe7bjXZuNyzA7OMBVFuouf4IBOs4h4qVc=;
 b=hg4jxEklFJH/D4D5VFxD4N8mFW+RIuemiskR8sjZSgr3kw1SbHisjtnL9824qZIl56
 M+mKcIobsZ0PGBIs/eyxyjXcaMrPATa9tggUoVrM6CH0oXo6mlDnesUb/rK1Z1UEoTj7
 vqkgAsQGfkIsrvZNcGYhFrbpo0E110m5hu5HvSURv6rHlob2niJYW9b44EprBsIBLiCX
 U+D3wEhWJ+aBb1k0JIK3JsUlL6Fx/3RdDuNHlaute39Xz6h1uzZtQISzap80CjZlcq8W
 2nVxM5YdpRlXWabL4B7udMtGYwDri2bpKT4Njf8NoA4gs98ZRGMG46mTisW1aGUH+KbY
 yokw==
X-Gm-Message-State: AOAM532fg9XC7yW6r9Def+AJiyWOyBgb3pHp2Cy1vsH2MBYbkB6ukjuQ
 2wasrlIGrWn7afcXPm8298U0a1wokItCIdFBYrm97CFTALDPxyB7
X-Google-Smtp-Source: ABdhPJzizY61100q4bCf9T60Arvb+LGw56ShVqCsOnys010Zsr36xEbEw+QKYsIFlPhSQ7vXrYuu6LlB4COGoqJl11g=
X-Received: by 2002:a9d:758b:: with SMTP id s11mr3206420otk.251.1599173885654; 
 Thu, 03 Sep 2020 15:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <CANYmVj-oSiMz_v-EpodsX173Q2iMKBPM-WVf2BsSOrZnPQtvUw@mail.gmail.com>
 <CANYmVj8vkBEry_XrQsz4QxYu29bd-mr1uVpwqdPsFLxQ1vSjRA@mail.gmail.com>
 <fd998121-4494-a528-71ac-0b12a52f8311@eurecom.fr>
 <CAGNhwTPhAab289kk_CAV2q2-PCvno44v=CuxMjv2ukrcEmNcVA@mail.gmail.com>
 <CANYmVj8aSNhizY0h1akgQzMJfAyR2J0bW9Zw7zLLaof+jgvV+g@mail.gmail.com>
In-Reply-To: <CANYmVj8aSNhizY0h1akgQzMJfAyR2J0bW9Zw7zLLaof+jgvV+g@mail.gmail.com>
Date: Thu, 3 Sep 2020 15:57:54 -0700
Message-ID: <CANYmVj-Hr4Qw8B2iEe9mVecytYae6G=oBqbehyZG++FQ1ZGCFg@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============2508869228866925551=="
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

--===============2508869228866925551==
Content-Type: multipart/alternative; boundary="00000000000063934605ae70af4b"

--00000000000063934605ae70af4b
Content-Type: text/plain; charset="UTF-8"

Hi Guys,

Thanks a lot for the tips. I stopped the network manager and everything
worked fine.

I am also copying some notes I took as a part of learning from this bug.
Since these emails are archived, I thought it might help someone else
having this issue.



Network Manager issues:

The server network manager started doing weird things and was messing up
the SFP connection to the USRP. It is recommended that the network manager
is disabled on the server - else it can potentially interrupt your testing.

Details:

One symptom: SFP connection was going down and coming up every 45 seconds
for eg. It would be down for a second and come back up. Therefore say if I
was collecting data onto a file for 60 seconds, data collection would stop.
This is detrimental to our testing.

How do we know that the connection is down: when you have a serial
connection on to the USRP and have a screen session in place, error
messages are displayed onto the screen/terminal. This displays if the
connection is up or down.

Exact command used:

   1.

   To stop network manager: sudo service network-manager stop
   2.

   sudo ifconfig eth0 down (eth0 is a placeholder for the network you are
   referring to)
   3.

   setting IP via ifconfig utility. sudo ifconfig eth0 [static IP address:
   say 192.168.6.10] netmask [netmask - typically 255.255.255.0] up
   4.

   ifconfig etho - check IP, netmask and gateway are all set correctly (GW
   should be something like 192.168.6.1. If not set gateway explicitly via
   ifconfig)

The network manager might come back up on a reboot. You will have to issue
the command on every reboot or check for other methods online for a
persistent setting.
Regards
Venkatesh

On Thu, Sep 3, 2020 at 12:41 PM Venkatesh Sathyanarayanan <
vesathya@eng.ucsd.edu> wrote:

> Thanks a lot Michael and cedric for taking time to answer my questions.. I
> will try to stop the network manager and see if that helps.
>
> Regards
> Venkatesh
>
> On Thursday, September 3, 2020, Michael Dickens <michael.dickens@ettus.com>
> wrote:
>
>> In my experience, this happens when the networking isn't stable, which
>> can be for all sorts of reasons:
>>
>> * connectors / cables are flaky;
>>
>> * host SW configuration isn't quite correct;
>>
>> * actual NIC has issues, HW or FW / configuration;
>>
>> * USRP NIC has issues ... very rare, but it can happen;
>>
>> * USRP FPGA has issues ... again rare, but it can happen;
>>
>> * USRP filesystem has issues ... could be the FS itself, or
>> configuration ... this happens sometimes & is usually resolved by
>> overwriting the whole SDcard filesystem & starting from "go" there.
>>
>> If you're Linux has the network manager, that doesn't help things since
>> it thinks it knows better than you what to be doing.
>>
>> There is no "one size fits all" answer unfortunately; just investigate
>> the networking & make sure all of the parts are functional.
>>
>> Hope this is useful! - MLD
>>
>> On Thu, Sep 3, 2020 at 3:30 AM Cedric Roux via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> maybe network manager (if you have that thing running) on the
>>> computer doing funny things with the interface? I had this
>>> issue with some 4g dongles in the past.
>>>
>>> On 2020-09-03 01:01, Venkatesh Sathyanarayanan via USRP-users wrote:
>>> > Hi,
>>> >
>>> > Small correction:
>>> >
>>> > *Questions:*
>>> > I notice that the test stops when the link goes down every 45 seconds.
>>> > This happens for all types of tests(with and without GUI).
>>> > Kindly let me know how to debug this - i.e. why the link goes down
>>> every
>>> > 45 seconds?
>>> >
>>> > Regards
>>> > Venkatesh
>>> >
>>> > On Wed, Sep 2, 2020 at 3:10 PM Venkatesh Sathyanarayanan
>>> > <vesathya@eng.ucsd.edu <mailto:vesathya@eng.ucsd.edu>> wrote:
>>> >
>>> >     Hi,
>>> >
>>> >
>>> >     *Setup details:*
>>> >     I am using an USRP N310 and I have the host computer connected to
>>> >     the USRP via SFP cable. I additionally have a serial connection
>>> >     between the two and have a screen session running.
>>> >
>>> >     *Observation:*
>>> >     On the screen session, I noticed the following messages:
>>> >     [ 2151.041079] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2195.841088] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2196.961090] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2241.761098] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2242.881106] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2287.681109] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2288.801114] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2333.601129] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2334.721127] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2379.521132] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2380.641137] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2425.441143] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2426.561149] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2471.361159] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2472.481166] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >     [ 2517.281166] nixge 40000000.ethernet sfp0: Link is Down
>>> >     [ 2518.401171] nixge 40000000.ethernet sfp0: Link is Up -
>>> >     10Gbps/Full - flow control off
>>> >
>>>  ..........................................................................................................................................................................
>>> >
>>>  ..........................................................................................................................................................................
>>> >
>>> >
>>>  ..........................................................................................................................................................................
>>> >
>>>  ..........................................................................................................................................................................
>>> >
>>> >     *Questions:*
>>> >     When I have a GNU radio GRC running with an active GUI displaying
>>> >     the spectrum, I see that it halts at the time when the link goes
>>> down.
>>> >     When I run a file with no GUI active - say IQ samples saved to a
>>> >     file, things running in the background and I do not see any
>>> >     interruption.
>>> >
>>> >      1. Kindly let me know why I am seeing this issue of link going
>>> down
>>> >         every 45 seconds and
>>> >      2. also if this could potentially affect my tests (all my tests
>>> are
>>> >         without any GUI.)
>>> >
>>> >
>>> >     Regards
>>> >     Venkatesh
>>> >
>>> >
>>> > _______________________________________________
>>> > USRP-users mailing list
>>> > USRP-users@lists.ettus.com
>>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--00000000000063934605ae70af4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div>Thanks a lot for the tips. I s=
topped the network manager and everything worked fine.</div><div><br></div>=
<div>I am also copying some notes I took as a part of learning from=C2=A0th=
is bug. Since these emails are archived, I thought it might help someone=C2=
=A0else having this issue.</div><div><br></div><div><br></div><div><br></di=
v><div><span id=3D"gmail-docs-internal-guid-2f423eff-7fff-1ea1-2018-6974c57=
bc87c"><p dir=3D"ltr" style=3D"line-height:1.295;margin-top:0pt;margin-bott=
om:8pt"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-w=
eight:700;font-variant-numeric:normal;font-variant-east-asian:normal;vertic=
al-align:baseline;white-space:pre-wrap"><font size=3D"1" style=3D"" face=3D=
"times new roman, serif">Network Manager issues:</font></span></p><p dir=3D=
"ltr" style=3D"line-height:1.295;margin-top:0pt;margin-bottom:8pt"><span st=
yle=3D"color:rgb(152,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:=
pre-wrap"><font size=3D"1" face=3D"times new roman, serif">The server netwo=
rk manager started doing weird things and was messing up the SFP connection=
 to the USRP. It is recommended that the network manager is disabled on the=
 server - else it can potentially interrupt your testing.=C2=A0</font></spa=
n></p><p dir=3D"ltr" style=3D"line-height:1.295;margin-top:0pt;margin-botto=
m:8pt"><span style=3D"color:rgb(0,0,0);background-color:transparent;font-we=
ight:700;font-variant-numeric:normal;font-variant-east-asian:normal;vertica=
l-align:baseline;white-space:pre-wrap"><font size=3D"1" face=3D"times new r=
oman, serif">Details:</font></span></p><p dir=3D"ltr" style=3D"line-height:=
1.295;margin-top:0pt;margin-bottom:8pt"><font size=3D"1" face=3D"times new =
roman, serif"><span style=3D"color:rgb(0,0,0);background-color:transparent;=
font-weight:700;font-variant-numeric:normal;font-variant-east-asian:normal;=
vertical-align:baseline;white-space:pre-wrap">One symptom:</span><span styl=
e=3D"color:rgb(0,0,0);background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-=
wrap"> SFP connection was going down and coming up every 45 seconds for eg.=
 It would be down for a second and come back up. Therefore say if I was col=
lecting data onto a file for 60 seconds, data collection would stop. This i=
s detrimental to our testing.=C2=A0</span></font></p><p dir=3D"ltr" style=
=3D"line-height:1.295;margin-top:0pt;margin-bottom:8pt"><font size=3D"1" fa=
ce=3D"times new roman, serif"><span style=3D"color:rgb(0,0,0);background-co=
lor:transparent;font-weight:700;font-variant-numeric:normal;font-variant-ea=
st-asian:normal;vertical-align:baseline;white-space:pre-wrap">How do we kno=
w that the connection is down: </span><span style=3D"color:rgb(0,0,0);backg=
round-color:transparent;font-variant-numeric:normal;font-variant-east-asian=
:normal;vertical-align:baseline;white-space:pre-wrap">when you have a seria=
l connection on to the USRP and have a screen session in place, error messa=
ges are displayed onto the screen/terminal. This displays if the connection=
 is up or down.</span></font></p><font size=3D"1" face=3D"times new roman, =
serif"><br></font><p dir=3D"ltr" style=3D"line-height:1.295;margin-top:0pt;=
margin-bottom:8pt"><span style=3D"color:rgb(0,0,0);background-color:transpa=
rent;font-weight:700;font-variant-numeric:normal;font-variant-east-asian:no=
rmal;vertical-align:baseline;white-space:pre-wrap"><font size=3D"1" face=3D=
"times new roman, serif">Exact command used:</font></span></p><ol style=3D"=
margin-top:0px;margin-bottom:0px"><li dir=3D"ltr" style=3D"list-style-type:=
decimal;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:p=
re"><p dir=3D"ltr" style=3D"line-height:1.295;margin-top:0pt;margin-bottom:=
0pt"><span style=3D"background-color:transparent;font-variant-numeric:norma=
l;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap"><font size=3D"1" face=3D"times new roman, serif">To stop network manage=
r: sudo service network-manager stop</font></span></p></li><li dir=3D"ltr" =
style=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:transpar=
ent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-ali=
gn:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.295;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:ba=
seline;white-space:pre-wrap"><font size=3D"1" face=3D"times new roman, seri=
f">sudo ifconfig eth0 down (eth0 is a placeholder for the network you are r=
eferring to)</font></span></p></li><li dir=3D"ltr" style=3D"list-style-type=
:decimal;color:rgb(0,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:=
pre"><p dir=3D"ltr" style=3D"line-height:1.295;margin-top:0pt;margin-bottom=
:0pt"><span style=3D"background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-w=
rap"><font size=3D"1" face=3D"times new roman, serif">setting IP via ifconf=
ig utility. sudo ifconfig eth0 [static IP address: say 192.168.6.10] netmas=
k [netmask - typically 255.255.255.0] up</font></span></p></li><li dir=3D"l=
tr" style=3D"list-style-type:decimal;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre"><p dir=3D"ltr" style=3D"line-height:1.295;=
margin-top:0pt;margin-bottom:8pt"><span style=3D"background-color:transpare=
nt;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-alig=
n:baseline;white-space:pre-wrap"><font size=3D"1" face=3D"times new roman, =
serif">ifconfig etho - check IP, netmask and gateway are all set correctly =
(GW should be something like 192.168.6.1. If not set gateway explicitly via=
 ifconfig)=C2=A0</font></span></p></li></ol><p dir=3D"ltr" style=3D"line-he=
ight:1.295;margin-top:0pt;margin-bottom:8pt"><span style=3D"color:rgb(0,0,0=
);background-color:transparent;font-variant-numeric:normal;font-variant-eas=
t-asian:normal;vertical-align:baseline;white-space:pre-wrap"><font size=3D"=
1" style=3D"" face=3D"times new roman, serif">The network manager might com=
e back up on a reboot. You will have to issue the command on every reboot o=
r check for other methods online for a persistent setting.</font></span></p=
></span>Regards<br>Venkatesh</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 3, 2020 at 12:41 PM Venkatesh=
 Sathyanarayanan &lt;<a href=3D"mailto:vesathya@eng.ucsd.edu">vesathya@eng.=
ucsd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Thanks a lot Michael and cedric for taking time to answer my questi=
ons.. I will try to stop the network manager and see if that helps.<div><br=
></div><div>Regards</div><div>Venkatesh<br><br>On Thursday, September 3, 20=
20, Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com" target=
=3D"_blank">michael.dickens@ettus.com</a>&gt; wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">In my experience, this ha=
ppens when the networking isn&#39;t stable, which can be for all sorts of r=
easons:<div><br></div><div>* connectors / cables are flaky;</div><div><br><=
/div><div>* host SW configuration isn&#39;t quite correct;</div><div><br></=
div><div>* actual NIC has issues, HW or FW / configuration;</div><div><br><=
/div><div>* USRP NIC has issues ... very rare, but it can happen;</div><div=
><br></div><div>* USRP FPGA has issues ... again rare, but it can happen;</=
div><div><br></div><div><div>* USRP filesystem has issues ... could be the =
FS itself, or configuration=C2=A0... this happens sometimes &amp; is usuall=
y=C2=A0resolved by overwriting the whole SDcard filesystem &amp; starting f=
rom &quot;go&quot; there.</div><div><br></div><div></div></div><div>If you&=
#39;re Linux has the network manager, that doesn&#39;t help things since it=
 thinks it knows better than you what to be doing.</div><div><br></div><div=
>There is no &quot;one size fits all&quot; answer unfortunately; just inves=
tigate the networking &amp; make sure all of the parts are functional.</div=
><div><br></div><div>Hope this is useful! - MLD</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 3, 2020 =
at 3:30 AM Cedric Roux via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">maybe network mana=
ger (if you have that thing running) on the<br>
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
et=3D"_blank">vesathya@eng.ucsd.edu</a>&gt;&gt; wrote:<br>
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
&gt;=C2=A0 =C2=A0 =C2=A0...................................................=
...........................................................................=
............................................<br>
&gt;=C2=A0 =C2=A0 =C2=A0...................................................=
...........................................................................=
............................................<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0...................................................=
...........................................................................=
............................................<br>
&gt;=C2=A0 =C2=A0 =C2=A0...................................................=
...........................................................................=
............................................<br>
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
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
<br>
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

--00000000000063934605ae70af4b--


--===============2508869228866925551==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2508869228866925551==--

