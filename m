Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E7C45BFE
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jun 2019 14:01:23 +0200 (CEST)
Received: from [::1] (port=43660 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbktQ-0002A4-JG; Fri, 14 Jun 2019 08:01:16 -0400
Received: from mail-oi1-f175.google.com ([209.85.167.175]:37370)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <cogwsn@gmail.com>) id 1hbktN-00024g-FW
 for usrp-users@lists.ettus.com; Fri, 14 Jun 2019 08:01:13 -0400
Received: by mail-oi1-f175.google.com with SMTP id t76so1763920oih.4
 for <usrp-users@lists.ettus.com>; Fri, 14 Jun 2019 05:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fafgm7K08w7vAWWajG24DKg1JAhzLhMZmzNUSVKQZKs=;
 b=eENd9FN93b1Y0Ds5JdBBE1Xxae+ElzOM7Hi3kIg/y2rLpN/OtZmJ+fHDvf9UFnUYsl
 WXOOuoQZRS9uwu252z0uD3BnF21oF1G7aJUIP+EmhnrgQuPG3846vRAftFY5Jx9HeIP0
 ecAg1FOjbtJYcho2VOSP3Zj84f87mEPQ6ByrvNhYoPn0Ne6MEWx+09ANYDtkgvGHFELH
 SLyPQRp87xzdKtcUhO6NctmbK1gmre0WrTAcI0/twqk53tzWZ4LKjn2vPLgKLyWZ4wt0
 1iC4vbGDjIJtENuDl+tgXfXFKcbcUe9mqmabX8C+4EVJKtA2xotsjNDxoIpnk5veDj62
 zz4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fafgm7K08w7vAWWajG24DKg1JAhzLhMZmzNUSVKQZKs=;
 b=PP0eXk5opExm8E+wt3woUSiLxtcANy0ZKzkcqdA+8v+DqmFQE4vURJ1fBikc6PwUUb
 MagstrE4ykdPFXYDtoBAtYF9BSDGuttGdYZFoDCJmdCNNk4Goy7/2QY/pVCl95no5zD+
 LSQKKK9L4+LcMifgtKr//eAG6GKLZBvwnEUrOSs8hBkC/xTCrUS39L7zZDpeXSgwugML
 nEeHYWMSjpVRvS27fVfR0jlMVUulzNp5+Aer0ZdipneQ9e7Lmr3POkOr3THwkSDiiU5/
 nmGbJf0+r9eX4hfIO2JggbbZL5vIH0xl+kx3D3EJXJR2wu3WJ0Pt/54SmNAiI2pPQoPq
 /xtw==
X-Gm-Message-State: APjAAAVd9QjO5mRAFMhsO/J/esyDzFogx+c9a8+x0CMy1vHawh1PwG+T
 c3OWoi8aXz0PPxsoniYe3NL2j4dOD1FoYK6aL0imZVHV
X-Google-Smtp-Source: APXvYqzEGi6RxHwc1cNlPUW1qV6vCEo6cB6P+hlWCs60yAEKccCL/GJwClMdXd/qX1SSqWCOnOu3WFYGXd5785XrtFI=
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr1533046oif.134.1560513632751; 
 Fri, 14 Jun 2019 05:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAOExtcS3ZNPKD+HFTT8utGZmTTKPpd1sUVhLrrQJO1Pxq_C80g@mail.gmail.com>
 <5D02A5F4.5010604@gmail.com>
 <CAOExtcTEGLv6zNja5YuxH+9ekethcnOWh5eNxy_9qE4Vuv=FhA@mail.gmail.com>
 <5D02ACD6.1010409@gmail.com>
In-Reply-To: <5D02ACD6.1010409@gmail.com>
Date: Fri, 14 Jun 2019 14:00:21 +0200
Message-ID: <CAOExtcQzRk0UGqCbr6Jrn5u2QfrqN2E_tzg2ce=_ZkdDSqaTHg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Reg: USRP N200 reset problem
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
From: Sumit Kumar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sumit Kumar <cogwsn@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============8905092275683639736=="
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

--===============8905092275683639736==
Content-Type: multipart/alternative; boundary="000000000000bf5469058b476496"

--000000000000bf5469058b476496
Content-Type: text/plain; charset="UTF-8"

Thanks Marcus, I tried it, works!

I have a follow-up question. I have another Ettus N200. whose none of the
LEDs glow. Just the fan runs. I believe it has became brick.
And I do not have JTAG. Any other way/tool to recover it.

Regards
Sumit



On Thu, Jun 13, 2019 at 10:06 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/13/2019 03:52 PM, Sumit Kumar wrote:
>
> Hi Marcus,
>
> I just did the following (nothing else). What shall I do after this ? I
> do not have the JTAG with me.
>
> *The safe-mode button is a pushbutton switch (S2) located inside the
> enclosure. To boot into the safe image, hold-down the safe-mode button
> while power-cycling the device. Continue to hold-down the button until the
> front-panel LEDs blink and remain solid.*
>
> *When in safe-mode, the USRP-N device will always have the IP address
> 192.168.10.2.*
>
>
> Once it is in safe-mode, use the EEPROM commands as below:
>
> https://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip
>
> To change the stored-in-eeprom IP address to whatever you want (perhaps
> just back to the default 192.168.10.2).  Once that works,
>   power-cycle, and ping the device.  It should now respond to the desired
> address.
>
> I suspect that what happened was your friend changed the IP address away
> from the default, so, you use safe-mode to get it into a state
>   where you can change the permanent address of the device.
>
>
>
>
> On Thu, Jun 13, 2019 at 9:38 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> On 06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:
>> >
>> > Hi,
>> >
>> > I got Ettus N200 from my colleague. I din't know the ip address so I
>> > did a reset. After the reset, the ip of N200 became 192.168.10.2 and I
>> > was able to ping and do all regular stuff with it. But whenever I do a
>> > power cycle of the N200, it is undetectable at 192.168.10.2. Then
>> > again I have to reset it.
>> >
>> > I am not sure what has gone wrong.
>> >
>> > Regards
>> > Sumit
>> >
>> Could you describe the steps you took to reset it?
>>
>> IT sounds like you put it in "safe mode", but didn't actually download a
>> working image into it or force an IP address reset to a desired IP
>> address.
>>
>> https://kb.ettus.com/N200/N210_Device_Recovery
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>
>
> --
> --
> Sumit kumar
> Doctoral Student, UPMC
> Eurecom, BIOT
> France
>
>
>

--000000000000bf5469058b476496
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Thanks Marcus, I tried it, works!=C2=A0<d=
iv><br></div><div>I have a follow-up=C2=A0question. I have another Ettus N2=
00. whose none of the LEDs glow. Just the fan runs. I believe it has became=
 brick.=C2=A0</div><div>And I do not have JTAG. Any other way/tool to recov=
er it.=C2=A0</div><div><br></div><div>Regards</div><div>Sumit=C2=A0</div><d=
iv><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Jun 13, 2019 at 10:06 PM Marcus D. Le=
ech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_7800493512752280261moz-cite-prefix">On 06/13/2019=
 03:52 PM, Sumit Kumar
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">Hi Marcus,=C2=A0
        <div><br>
        </div>
        <div>I just did the following (nothing else).=C2=A0<span>What shall=
 I do
            after this ? I do not have the JTAG with me.=C2=A0</span></div>
        <div><br>
        </div>
        <div>
          <p><u>The safe-mode
              button is a pushbutton switch (S2) located inside the
              enclosure. To boot into the safe image, hold-down the
              safe-mode button while power-cycling the device. Continue
              to hold-down the button until the front-panel LEDs blink
              and remain solid.</u></p>
          <p><u>When in
              safe-mode, the USRP-N device will always have the IP
              address 192.168.10.2.</u></p>
          <p><u><br>
            </u></p>
        </div>
      </div>
    </blockquote>
    Once it is in safe-mode, use the EEPROM commands as below:<br>
    <br>
<a class=3D"gmail-m_7800493512752280261moz-txt-link-freetext" href=3D"https=
://files.ettus.com/manual/page_usrp2.html#usrp2_network_changeip" target=3D=
"_blank">https://files.ettus.com/manual/page_usrp2.html#usrp2_network_chang=
eip</a><br>
    <br>
    To change the stored-in-eeprom IP address to whatever you want
    (perhaps just back to the default 192.168.10.2).=C2=A0 Once that works,=
<br>
    =C2=A0 power-cycle, and ping the device.=C2=A0 It should now respond to=
 the
    desired address.<br>
    <br>
    I suspect that what happened was your friend changed the IP address
    away from the default, so, you use safe-mode to get it into a state<br>
    =C2=A0 where you can change the permanent address of the device.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <p><br>
          </p>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 13, 2019 at 9:38
          PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          06/13/2019 03:33 PM, Sumit Kumar via USRP-users wrote:<br>
          &gt;<br>
          &gt; Hi,<br>
          &gt;<br>
          &gt; I got Ettus N200 from my colleague. I din&#39;t know the ip
          address so I <br>
          &gt; did a reset. After the reset, the ip of N200 became
          192.168.10.2 and I <br>
          &gt; was able to ping and do all regular stuff with it. But
          whenever I do a <br>
          &gt; power cycle of the N200, it is undetectable at
          192.168.10.2. Then <br>
          &gt; again I have to reset it.<br>
          &gt;<br>
          &gt; I am not sure what has gone wrong.<br>
          &gt;<br>
          &gt; Regards<br>
          &gt; Sumit<br>
          &gt;<br>
          Could you describe the steps you took to reset it?<br>
          <br>
          IT sounds like you put it in &quot;safe mode&quot;, but didn&#39;=
t actually
          download a <br>
          working image into it or force an IP address reset to a
          desired IP address.<br>
          <br>
          <a href=3D"https://kb.ettus.com/N200/N210_Device_Recovery" rel=3D=
"noreferrer" target=3D"_blank">https://kb.ettus.com/N200/N210_Device_Recove=
ry</a><br>
          <br>
          <br>
          <br>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
          <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lis=
ts.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      -- <br>
      <div dir=3D"ltr" class=3D"gmail-m_7800493512752280261gmail_signature"=
>
        <div dir=3D"ltr">
          <div><span style=3D"color:rgb(136,136,136);font-size:12.8px">--=
=C2=A0</span><br style=3D"color:rgb(136,136,136);font-size:12.8px">
            <div style=3D"color:rgb(136,136,136);font-size:12.8px">Sumit
              kumar<br>
              Doctoral Student, UPMC</div>
            <div style=3D"color:rgb(136,136,136);font-size:12.8px">Eurecom,
              BIOT</div>
            <div style=3D"color:rgb(136,136,136);font-size:12.8px">France</=
div>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div><div dir=3D"ltr" class=
=3D"gmail_signature"><div dir=3D"ltr"><div><br></div></div></div></div>

--000000000000bf5469058b476496--


--===============8905092275683639736==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8905092275683639736==--

