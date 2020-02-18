Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B176163241
	for <lists+usrp-users@lfdr.de>; Tue, 18 Feb 2020 21:09:49 +0100 (CET)
Received: from [::1] (port=59466 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j49Bh-00070g-AU; Tue, 18 Feb 2020 15:09:45 -0500
Received: from violet.upc.es ([147.83.2.51]:42208)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <adria.amezaga@upc.edu>)
 id 1j49Bd-0006tL-57
 for usrp-users@lists.ettus.com; Tue, 18 Feb 2020 15:09:41 -0500
Received: from ackerman2.upc.es (ackerman2.upc.es [147.83.2.244])
 by violet.upc.es (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
 01IK8vWI055418
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128 verify=FAIL);
 Tue, 18 Feb 2020 21:08:58 +0100
Received: from pocophonef1-poco-f1.home (static.masmovil.com [93.176.152.100]
 (may be forged)) (authenticated bits=0)
 by ackerman2.upc.es (8.14.4/8.14.4) with ESMTP id 01IK8vMw009460
 (version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
 Tue, 18 Feb 2020 21:08:57 +0100
In-Reply-To: <CANf970YCf2scR63XMV-m6-nhcN4o_q-qiRGqSB6VjTNJ4mTDpg@mail.gmail.com>
References: <920c3ec0-af6b-8585-a2bc-84e35450e085@upc.edu>
 <CAB__hTS2to9GJraPTx=krJzWu7hnv0dyX7rmuJjq7cut+_wAyw@mail.gmail.com>
 <CANf970YCf2scR63XMV-m6-nhcN4o_q-qiRGqSB6VjTNJ4mTDpg@mail.gmail.com>
X-Referenced-Uid: 447
Thread-Topic: Re: [USRP-users] Using DDC/DUC frequency in RFNoC
User-Agent: Android
X-Is-Generated-Message-Id: true
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 21:08:55 +0100
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <5d6093b3-a3b0-430f-a806-b4b62ba19ec9@upc.edu>
X-Greylist: Delayed for 116:29:05 by milter-greylist-4.3.9 (violet.upc.es
 [147.83.2.51]); Tue, 18 Feb 2020 21:08:58 +0100 (CET)
X-Greylist: Default is to whitelist mail, not delayed by milter-greylist-4.4.3
 (ackerman2.upc.es [147.83.2.244]); Tue, 18 Feb 2020 21:08:58 +0100 (CET)
X-Scanned-By: MIMEDefang 2.70 on 147.83.2.244
X-Virus-Scanned: clamav-milter 0.100.3 at violet
X-Virus-Status: Clean
Subject: Re: [USRP-users] Using DDC/DUC frequency in RFNoC
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
From: =?utf-8?q?Adri=C3=A0_Am=C3=A9zaga_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?ISO-8859-1?Q?Adri=E0_Am=E9zaga?= <adria.amezaga@upc.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
 Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============1511183998318742100=="
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

--===============1511183998318742100==
Content-Type: multipart/alternative; boundary="----EEAFZCGPHOBD889IBR9FWYT6ZZ5N6T"
Content-Transfer-Encoding: 7bit

------EEAFZCGPHOBD889IBR9FWYT6ZZ5N6T
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
 charset=UTF-8

Hello, thank you for your suggestions! I'm using a custom burst generator b=
lock that attaches timestamps but I was not correctly setting the timed com=
mand to the DUC=2E


=E2=81=A3Sent from BlueMail =E2=80=8B

On 18 de febr=
=2E de 2020, 17:18, at 17:18, Sam Reiter <sam=2Ereiter@ettus=2Ecom> wrote:
=
>I'll also add in that you need to set the frequency tuning policies to
>PO=
LICY_MANUAL before you can change rf_freq or dsp_freq independently=2E
>
>S=
am Reiter
>
>On Mon, Feb 17, 2020 at 12:13 PM Rob Kossler via USRP-users <
=
>usrp-users@lists=2Eettus=2Ecom> wrote:
>
>> Hi Adri=C3=A0,
>> If you are t=
rying to use 'timed' commands, perhaps the problem is the
>> signal generat=
or block=2E  If I remember correctly, this block does not
>> support timed =
commands=2E  This means that the resulting data stream
>will not
>> include=
 a time stamp and thus if you try to tune the DDC or DUC using
>a
>> timed =
command, it will delay the command until the appropriate time
>stamp
>> is =
seen (which will never occur in your case)=2E  If you are not using
>timed
=
>> commands, then just ignore this=2E=2E=2E=2E
>> Rob
>>
>> On Thu, Feb 13,=
 2020 at 6:40 PM Adria via USRP-users <
>> usrp-users@lists=2Eettus=2Ecom> =
wrote:
>>
>>> Dear all,
>>>
>>> I'm trying to tune the output and input fre=
quency of an X310 +
>UBX-160=2E
>>> I instantiate the radio block and the D=
DC and DUC blocks and connect
>them=2E
>>>
>>> The TX chain is like this: [=
Signal generator] -> [DUC] -> [Radio
>block]=2E
>>>
>>> My intention is to =
use the DUC only for frequency tuning, since I
>set
>>> the UBX synthesizer=
s to Integer-N mode=2E
>>>
>>> The fact is that configure the DUC frequency=
 by setting the "freq"
>>> parameter using the set_param call has no effect=
=2E
>>>
>>> Trying to set the DUC frequency using tune_request through the
=
>dsp_freq
>>> parameter has no effect either=2E
>>>
>>> My other question i=
s about the Integer-N tuning=2E Is there a way to
>set
>>> the integer mode=
 without using the tune_request object? I expected
>to be
>>> able to do th=
at using radio_ctrl=2E
>>>
>>> I am sure I'm missing something but I don't =
know where else to look,
>so
>>> any help would be appreciated=2E
>>>
>>> I=
'm using UHD 3=2E14=2E
>>>
>>> Thanks!
>>>
>>>
>>> Adri=C3=A0 Am=C3=A9zaga
=
>>>
>>>
>>>
>>> _______________________________________________
>>> USRP-us=
ers mailing list
>>> USRP-users@lists=2Eettus=2Ecom
>>> http://lists=2Eettu=
s=2Ecom/mailman/listinfo/usrp-users_lists=2Eettus=2Ecom
>>>
>> ____________=
___________________________________
>> USRP-users mailing list
>> USRP-user=
s@lists=2Eettus=2Ecom
>> http://lists=2Eettus=2Ecom/mailman/listinfo/usrp-u=
sers_lists=2Eettus=2Ecom
>>

------EEAFZCGPHOBD889IBR9FWYT6ZZ5N6T
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body style=3D"zoom: 0%;"><div dir=3D"auto">Hello, thank=
 you for your suggestions! I'm using a custom burst generator block that at=
taches timestamps but I was not correctly setting the timed command to the =
DUC=2E<br><br><br></div>
<div dir=3D"auto"><!-- tmjah_g_1299s -->Sent from =
<!-- tmjah_g_1299e --><a href=3D"http://www=2Ebluemail=2Eme/r?b=3D15818"><!=
-- tmjah_g_1299s -->BlueMail<!-- tmjah_g_1299e --></a><!-- tmjah_g_1299s --=
> <!-- tmjah_g_1299e --></div>
<div class=3D"gmail_quote" >On 18 de febr=2E=
 de 2020, at 17:18, Sam Reiter &lt;<a href=3D"mailto:sam=2Ereiter@ettus=2Ec=
om" target=3D"_blank">sam=2Ereiter@ettus=2Ecom</a>&gt; wrote:<blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px =
solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr">
 <div>
  I=
'll also add in that you need to set the frequency tuning policies to POLIC=
Y_MANUAL before you can change rf_freq or dsp_freq independently=2E
 </div>=

 <div>
  <br>
 </div>
 <div>
  <div>
   <div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature">
    <div dir=3D"ltr">
     <di=
v>
      <div dir=3D"ltr">
       Sam Reiter
      </div>
     </div>
    <=
/div>
   </div>
  </div>
 </div>
</div>
<br>
<div class=3D"gmail_quote">
 <=
div dir=3D"ltr" class=3D"gmail_attr">
  On Mon, Feb 17, 2020 at 12:13 PM Ro=
b Kossler via USRP-users &lt;
  <a href=3D"mailto:usrp-users@lists=2Eettus=
=2Ecom">usrp-users@lists=2Eettus=2Ecom</a>&gt; wrote:
  <br>
 </div>
 <bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
  <div dir=3D"ltr">
   <div=
 dir=3D"ltr">
    Hi Adri=C3=A0,
    <div>
     If you are trying to use 't=
imed' commands, perhaps the problem is the signal generator block=2E&nbsp; =
If I remember correctly, this block does not support timed commands=2E&nbsp=
; This means that the resulting data stream will not include a time stamp&n=
bsp;and thus if you try to tune the DDC or DUC using a timed command, it wi=
ll delay the command until the appropriate time stamp is seen (which will n=
ever occur in your case)=2E&nbsp; If you are not using timed commands, then=
 just ignore this=2E=2E=2E=2E
    </div>
    <div>
     Rob
    </div>
   <=
/div>
   <br>
   <div class=3D"gmail_quote">
    <div dir=3D"ltr" class=3D"=
gmail_attr">
     On Thu, Feb 13, 2020 at 6:40 PM Adria via USRP-users &lt;=

     <a href=3D"mailto:usrp-users@lists=2Eettus=2Ecom" target=3D"_blank">u=
srp-users@lists=2Eettus=2Ecom</a>&gt; wrote:
     <br>
    </div>
    <bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
     Dear all,
     <br> 
 =
    <br> I'm trying to tune the output and input frequency of an X310 + UBX=
-160=2E 
     <br> I instantiate the radio block and the DDC and DUC blocks=
 and connect them=2E
     <br> 
     <br> The TX chain is like this: [Signa=
l generator] -&gt; [DUC] -&gt; [Radio block]=2E
     <br> 
     <br> My int=
ention is to use the DUC only for frequency tuning, since I set 
     <br> =
the UBX synthesizers to Integer-N mode=2E
     <br> 
     <br> The fact is =
that configure the DUC frequency by setting the "freq" 
     <br> parameter=
 using the set_param call has no effect=2E
     <br> 
     <br> Trying to s=
et the DUC frequency using tune_request through the dsp_freq 
     <br> par=
ameter has no effect either=2E
     <br> 
     <br> My other question is ab=
out the Integer-N tuning=2E Is there a way to set 
     <br> the integer mo=
de without using the tune_request object? I expected to be 
     <br> able =
to do that using radio_ctrl=2E
     <br> 
     <br> I am sure I'm missing s=
omething but I don't know where else to look, so 
     <br> any help would =
be appreciated=2E
     <br> 
     <br> I'm using UHD 3=2E14=2E
     <br> 
 =
    <br> Thanks!
     <br> 
     <br> 
     <br> Adri=C3=A0 Am=C3=A9zaga
  =
   <br> 
     <br> 
     <br> 
     <br> __________________________________=
_____________
     <br> USRP-users mailing list
     <br> 
     <a href=3D"=
mailto:USRP-users@lists=2Eettus=2Ecom" target=3D"_blank">USRP-users@lists=
=2Eettus=2Ecom</a>
     <br> 
     <a href=3D"http://lists=2Eettus=2Ecom/ma=
ilman/listinfo/usrp-users_lists=2Eettus=2Ecom" rel=3D"noreferrer" target=3D=
"_blank">http://lists=2Eettus=2Ecom/mailman/listinfo/usrp-users_lists=2Eett=
us=2Ecom</a>
     <br> 
    </blockquote>
   </div>
  </div> ______________=
_________________________________
  <br> USRP-users mailing list
  <br> 
  =
<a href=3D"mailto:USRP-users@lists=2Eettus=2Ecom" target=3D"_blank">USRP-us=
ers@lists=2Eettus=2Ecom</a>
  <br> 
  <a href=3D"http://lists=2Eettus=2Ecom=
/mailman/listinfo/usrp-users_lists=2Eettus=2Ecom" rel=3D"noreferrer" target=
=3D"_blank">http://lists=2Eettus=2Ecom/mailman/listinfo/usrp-users_lists=2E=
ettus=2Ecom</a>
  <br> 
 </blockquote>
</div></blockquote></div></body></ht=
ml>
------EEAFZCGPHOBD889IBR9FWYT6ZZ5N6T--



--===============1511183998318742100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1511183998318742100==--


