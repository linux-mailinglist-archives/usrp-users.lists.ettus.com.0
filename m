Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4B52C3698
	for <lists+usrp-users@lfdr.de>; Wed, 25 Nov 2020 03:16:24 +0100 (CET)
Received: from [::1] (port=37700 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1khkM2-0004y2-AC; Tue, 24 Nov 2020 21:16:22 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:44029)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <wade.fife@ettus.com>) id 1khkLx-0004rs-Iy
 for usrp-users@lists.ettus.com; Tue, 24 Nov 2020 21:16:17 -0500
Received: by mail-oi1-f180.google.com with SMTP id t143so1067602oif.10
 for <usrp-users@lists.ettus.com>; Tue, 24 Nov 2020 18:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p1pnofshAc9rlRPwm6/pX3po9alWZV5JE2PlYi4Cr14=;
 b=VuBID/2yFwdo6vo6t6s6JHxGbKBp6KOcWfocNkTMvbxt0q2yPFi/SMKcngH65cDIx/
 Uvtad62TW6FRYZ/hrEQwEmpdrJv3RBqI1Ql8EUBSzhJubxXS+1+6mn/dA72n4OpJw4H8
 I0T2oHmKlYaA/xUXDND8Ix24avhrxRbIMW0xAHbLsbp4xMqtfFQVrST5XBD9pl6OOIh9
 hFGNJJxfURR1p2/+UXjPY/IMdxs6IkkWvCGQ4dTXANTwzbpTXfKH9OESxMyekdL1ukVH
 ookIfZFVZzVZg4eS9hv1OXeebtzx+EscLVbmngBqXOaMMUpHye9awQP6bBWVbIf9HdWL
 4DRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p1pnofshAc9rlRPwm6/pX3po9alWZV5JE2PlYi4Cr14=;
 b=frOEurCE5Gu20FaY/Tem72JcLQ5DnGUvNFghQ5LC/7NfpqeCmiG/UkzRv3JmppFYZH
 pqLEEXrEoXqDGI6pS2+BmnB5P/ukCeqKBWNKIEza4DCwp5G3F0zBAOYQDGQArBvEl9qw
 m7X+0nzVWJpezlrabLxHcFfscQmlJb0O0/nB03+GxM9xF5wXMiD5LkkqQfx4cw06eaHC
 85rGAufbYZukhxCyjFyz3CzVHrHNrOsBq2xWxFUAeWsYsdABxbuP63boiZhmA9qh8QdM
 iIANfq6ZUbbUMXt+tKexQn/kIq05Z7amQBkP5fjUgSvT1GfudgJbZg32clO2DEPTSIhM
 dlVg==
X-Gm-Message-State: AOAM532SAowldMQc68qBun+CP2VQDngKe4nWGDujEUQI2Dn3qoOqmFcJ
 Zudo1Na1oQDQG13icgs81AxuCPDVHIqhHbbeVFvuqIfA
X-Google-Smtp-Source: ABdhPJwvbgX5Pz03ldcUoluRXiF58g6TA62TbeEo6K6bmOS8TG+7oE/WNuv0QxotsAfNaj3HIrLM1Gdw1NkQxAPiiV4=
X-Received: by 2002:aca:aad0:: with SMTP id t199mr815861oie.62.1606270536791; 
 Tue, 24 Nov 2020 18:15:36 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3=cWOn8QPbVSU=h040NaquMntJoMgs2j1zXexcQmLDNpA@mail.gmail.com>
 <CAL7q81veqFNTKH46mdb-5Sf-KOGeJR0Y_dEphB1-BhsGcrmK6g@mail.gmail.com>
 <CAKHaR3=YnX0o_Hju-s_HKpmr2vM-tep45aZdSH8dT9gh4XPSKg@mail.gmail.com>
In-Reply-To: <CAKHaR3=YnX0o_Hju-s_HKpmr2vM-tep45aZdSH8dT9gh4XPSKg@mail.gmail.com>
Date: Tue, 24 Nov 2020 20:15:29 -0600
Message-ID: <CAFche=it2-vnZ75y3Kx5QyyRY+7A7vWR=5NoVFz84r88iOWKrw@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Subject: Re: [USRP-users] simulation error with uhd 4.0
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9199055010165921498=="
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

--===============9199055010165921498==
Content-Type: multipart/alternative; boundary="000000000000c2540505b4e500a0"

--000000000000c2540505b4e500a0
Content-Type: text/plain; charset="UTF-8"

Hi Dario,

The generation of the IP should be the same in tree and out of tree, so it
is strange that the netlist simulation file isn't generated for you. I'd
like to try it to see if I get that behavior, but I'm currently traveling
so it might be a while before I am able to.

I wanted to let you know though that I simulated complex_multiplier in an
OOT block with Vivado recently without issue, so I know it can work. Like
Jonathon said, Vivado can sometimes be finicky. A minor change to your code
might allow it to work. Often when Vivado crashes, I remove the offending
code and add it back incrementally until I can find out what's causing
Vivado to crash. I am usually able to find a workaround that way.

Thanks,

Wade

On Sun, Nov 22, 2020 at 2:21 PM Dario Pennisi via USRP-users <
usrp-users@lists.ettus.com> wrote:

> i did some step forward. it looks like in the build directory there's a
> file called complex_multiplier_sim_netlist.v that allows simulation however
> when calling the simulation from an OOT directory the IP is rebuilt under
> that directory and that file is not created.
> unfortunately the sim/complex_multiplier.vhd being created is not usable
> as it causes the simulator to crash.
> any suggestions on how to have this done by the simulation makefile?
>
> thanks,
> Dario
>
> On Sat, Nov 21, 2020 at 8:43 PM Jonathon Pendlum <
> jonathon.pendlum@ettus.com> wrote:
>
>> Hi Dario,
>>
>> Unfortunately, Vivado's xsim simulator sometimes crashes when it runs
>> into syntax and elaboration errors. Make sure you don't have issues like
>> signals with multiple drivers, undriven signals, missing reset logic,
>> typos, etc. Note that these issues may be in code that is/seems unrelated
>> to the cmul instantiation.
>>
>> Also, if you have access to ModelSim, I would highly suggest trying that
>> tool instead as it is far more robust than xsim. You can use the vsim make
>> target to use ModelSim.
>>
>> Jonathon
>>
>> On Sat, Nov 21, 2020 at 5:54 AM Dario Pennisi via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi,
>>> i'm trying to simulate a block where i'm using cmul. in order to have
>>> that compiled in i am including the following in my Makefile under
>>> rfnoc/fpga in my OOT directory:
>>>
>>> include $(BASE_DIR)/../lib/ip/Makefile.inc
>>> SIM_SRCS = $(abspath rfnoc_block_demod_tb.sv)  \
>>> $(LIB_IP_COMPLEX_MULTIPLIER_OUTS) \
>>>
>>> i tried also adding this to DESIGN_SRCS but when running simulation with
>>> Vivado 2019.1 i see the following error:
>>>
>>> ERROR: [XSIM 43-3983] Internal Compiler error encountered while
>>> processing aggregate association.
>>> ERROR: [XSIM 43-3915] Encountered a fatal error. Cannot continue.
>>> Exiting...
>>>
>>> if i remove cmul instance from my design simulation works.
>>>
>>> can you please shed some light on how to fix this?
>>> thanks,
>>>
>>> Dario Pennisi
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>
> --
> Dario Pennisi
> ipTronix S.r.l.
>
> Tel     +39 06 66183814
> Fax     +39 06 66188420
> Mobile  +39 335 6878904
> Web     www.iptronix.com
> <https://urldefense.com/v3/__http:/www.iptronix.com__;!!KXGHL9MWuGc!s5Tn7AzcrRbHxw-tqBwTDmxvGjHnCEyM7Hgx2K_iBSRF5MT3mAq3Hf-oopBP-dAa$>
>
> The information contained in this message is confidential and may be
> legally privileged. The message is intended solely for the addressee(s), if
> you are not the intended recipient, you are hereby notified that any use,
> dissemination or reproduction is strictly prohibited and may be unlawful.
> If you are not the intended recipient please contact the sender by return
> e-mail and destroy all copies of the original message.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000c2540505b4e500a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dario,</div><div><br></div><div>The generation of =
the IP should be the same in tree and out of tree, so it is strange that th=
e netlist simulation file isn&#39;t generated for you. I&#39;d like to try =
it to see if I get that behavior, but I&#39;m currently traveling so it mig=
ht be a while before I am able to.</div><div><br></div><div>I wanted to let=
 you know though that I simulated complex_multiplier in an OOT block with V=
ivado recently without issue, so I know it can work. Like Jonathon said, Vi=
vado can sometimes be finicky. A minor change to your code might allow it t=
o work. Often when Vivado crashes, I remove the offending code and add it b=
ack incrementally until I can find out what&#39;s causing Vivado to crash. =
I am usually able to find a workaround that way.<br></div><div><br></div><d=
iv>Thanks,</div><div><br></div><div>Wade<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Nov 22, 2020 at 2=
:21 PM Dario Pennisi via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.=
ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>i did some step =
forward. it looks like in the build directory there&#39;s a file called com=
plex_multiplier_sim_netlist.v that allows simulation however when calling t=
he simulation from an OOT directory the IP is rebuilt under that directory =
and that file is not created.</div><div>unfortunately the sim/complex_multi=
plier.vhd being created is not usable as it causes the simulator to crash.<=
br></div><div>any suggestions on how to have this done by the simulation ma=
kefile?</div><div><br></div><div>thanks,</div><div>Dario<br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, N=
ov 21, 2020 at 8:43 PM Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pend=
lum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
>Hi Dario,<div><br></div><div>Unfortunately, Vivado&#39;s xsim simulator so=
metimes crashes when it runs into syntax and elaboration errors. Make sure =
you don&#39;t have issues like signals with multiple drivers, undriven sign=
als, missing reset logic, typos, etc. Note that these issues may be in code=
 that is/seems unrelated to the cmul instantiation.</div><div><br></div><di=
v>Also, if you have access to ModelSim, I would highly suggest trying that =
tool instead as it is far more robust than xsim. You can use the vsim make =
target to use ModelSim.<br></div><div><br></div><div>Jonathon</div><div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Sat, Nov 21, 2020 at 5:54 AM Dario Pennisi via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>Hi,</div><div>i&#39;m trying to simulate a bl=
ock where i&#39;m using cmul. in order to have that compiled in i am includ=
ing the following in my Makefile under rfnoc/fpga in my OOT directory:</div=
><div><br></div><div>include $(BASE_DIR)/../lib/ip/Makefile.inc</div><div>S=
IM_SRCS =3D $(abspath <a href=3D"http://rfnoc_block_demod_tb.sv" target=3D"=
_blank">rfnoc_block_demod_tb.sv</a>) =C2=A0\<br>$(LIB_IP_COMPLEX_MULTIPLIER=
_OUTS) \</div><div><br></div><div>i tried also adding this to DESIGN_SRCS b=
ut when running simulation with Vivado 2019.1 i see the following error:</d=
iv><div><br></div><div>ERROR: [XSIM 43-3983] Internal Compiler error encoun=
tered while processing aggregate association.<br>ERROR: [XSIM 43-3915] Enco=
untered a fatal error. Cannot continue. Exiting... <br></div><div><br></div=
><div>if i remove cmul instance from my design simulation works.</div><div>=
<br></div><div>can you please shed some light on how to fix this?</div><div=
>thanks,</div><div><br></div><div>Dario Pennisi<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div dir=
=3D"ltr"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;fon=
t-size:13.3333px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-fa=
mily:Calibri,sans-serif;font-size:13.3333px"><span style=3D"color:rgb(0,0,0=
);font-family:Calibri,sans-serif;font-size:13.3333px">ipTronix S.r.l.</span=
><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.=
3333px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font=
-size:13.3333px">=C2=A0</span><br style=3D"color:rgb(0,0,0);font-family:Cal=
ibri,sans-serif;font-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-f=
amily:Calibri,sans-serif;font-size:13.3333px">Tel=C2=A0=C2=A0=C2=A0=C2=A0 +=
39 06 66183814</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans=
-serif;font-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-family:Cal=
ibri,sans-serif;font-size:13.3333px">Fax=C2=A0=C2=A0=C2=A0=C2=A0 +39 06 661=
88420</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;fo=
nt-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-family:Calibri,sans=
-serif;font-size:13.3333px">Mobile=C2=A0 +39 335 6878904</span><br style=3D=
"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><span=
 style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333=
px">Web=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><a href=3D"https://urldefense.c=
om/v3/__http:/www.iptronix.com__;!!KXGHL9MWuGc!s5Tn7AzcrRbHxw-tqBwTDmxvGjHn=
CEyM7Hgx2K_iBSRF5MT3mAq3Hf-oopBP-dAa$" style=3D"font-family:Calibri,sans-se=
rif;font-size:13.3333px" target=3D"_blank">www.iptronix.com</a><br style=3D=
"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><span=
 style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333=
px">=C2=A0</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-ser=
if;font-size:13.3333px"><span style=3D"color:rgb(0,0,0);font-family:Calibri=
,sans-serif;font-size:13.3333px">The information contained in this message =
is confidential and may be legally privileged. The message is intended sole=
ly for the addressee(s), if you are not the intended recipient, you are her=
eby notified that any use, dissemination or reproduction is strictly prohib=
ited and may be unlawful. If you are not the intended recipient please cont=
act the sender by return e-mail and destroy all copies of the original mess=
age.</span><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000c2540505b4e500a0--


--===============9199055010165921498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9199055010165921498==--

