Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B4411364D1B
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 23:34:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F343A3846B2
	for <lists+usrp-users@lfdr.de>; Mon, 19 Apr 2021 17:34:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="M3fLPOzK";
	dkim-atps=neutral
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	by mm2.emwd.com (Postfix) with ESMTPS id BF0B738469E
	for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 17:33:46 -0400 (EDT)
Received: by mail-qk1-f176.google.com with SMTP id 8so3661844qkv.8
        for <USRP-users@lists.ettus.com>; Mon, 19 Apr 2021 14:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=LKCFG8/SBmNv/wvDUIsDdc0DN3DGYrMiA6RhMjeWWAM=;
        b=M3fLPOzK5SeIAaMKjKgk5osqjLhFu6StT27MD0GxZpSGZPsE/0Ot3B7j0VZYDc5l37
         wgwhrqERUW4yGi0ktwXZB7T9y0h2BKx7ldpDz1AzS8iIZLkOrnStL1ICbDpChG2JgMOB
         gNf6B87cDRjeIeInXKxnqTt2VAA81SEFpsRv2aGDhVS5d8U9Mx7jre5MJFdX6G2kW7xd
         0Fva9L+MnY0sWoUrPrX3L1303wghsnPXm8T09UeJeza2TN7r5rZGC7qihSvQBBwlo9qj
         7nCL9bixyiCnYiqrcbnu9mibFjqZw3f07fxqnyBljryrYpqTgy6Kh7ouJv9YJ+jyrF4D
         fFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=LKCFG8/SBmNv/wvDUIsDdc0DN3DGYrMiA6RhMjeWWAM=;
        b=ikVgywW6Z5Tt3xHtIM464De4W2/1uvTdVOHpb3ksNPItXeOlyf5EioRnc2ssxpzzUH
         wxIjOuyFxb1sXd1gO5UeimfvmydXTq+D0ZPGjkt+Fou7/gJPS9ziATYCAzhHquLshX13
         hjSPCl4kLuDMZIHJnd/+m9QDy3LbUdqkoY7stD19Cqzy7ECf9GBYh9Mn8CRGExPJF+SA
         +gg7YyrYK7vj9jPKRyTm1zt0nQNubLJgLeWdMzEfBYj7p1TIS7Yfg+wUQWdYe4SeJYAb
         J3//p2BnDS/PPR2cJCc4aNDsjoEOrth/zU+CLMKcEu35uWsi2PRrYvyJmKeHo9b62ePc
         PgFw==
X-Gm-Message-State: AOAM5323SfsER6RM9RDX0+3nD2MmoErXxGrNHTd4ZoYHIICpSf2YXNPa
	eCsWUJ8JiwsEyfMndpgL8k0=
X-Google-Smtp-Source: ABdhPJww1RcsDdhN0PCBhitELyfhxt17sEwKrYBQV9lQzOvi0cwnH5MwotbwcbudIKzCBN5pffa2PQ==
X-Received: by 2002:a37:9604:: with SMTP id y4mr13926622qkd.345.1618868026195;
        Mon, 19 Apr 2021 14:33:46 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id q28sm10641752qkm.15.2021.04.19.14.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 14:33:45 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Mon, 19 Apr 2021 17:33:44 -0400
Message-Id: <5224C2E3-1238-45F5-9DA9-5C01954A4F4A@gmail.com>
References: <CALNMZ8VfXZZu1t8tb-GwReQVfBwZL-uBL_eXUjdjLXLfzRio7A@mail.gmail.com>
In-Reply-To: <CALNMZ8VfXZZu1t8tb-GwReQVfBwZL-uBL_eXUjdjLXLfzRio7A@mail.gmail.com>
To: Brendan Horsfield <brendan.horsfield@vectalabs.com>
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: DJP4BARX76Y2OHOIDVELVH3JVYOMX567
X-Message-ID-Hash: DJP4BARX76Y2OHOIDVELVH3JVYOMX567
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Martin Elfvelin <marelf-5@student.ltu.se>, USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reflected power on USRP B200
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJP4BARX76Y2OHOIDVELVH3JVYOMX567/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9030344635447304346=="


--===============9030344635447304346==
Content-Type: multipart/alternative; boundary=Apple-Mail-A5827727-164A-4B59-9818-AA1AB0F3FAF6
Content-Transfer-Encoding: 7bit


--Apple-Mail-A5827727-164A-4B59-9818-AA1AB0F3FAF6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I was thinking a switch would get moved to the RX port of the circulator, wh=
ich would see the TX power reduced by 20dB. Then into a switch that switched=
 the RX port of the circulator between a 50 ohm load and the RX port.=20

Sent from my iPhone

> On Apr 19, 2021, at 5:13 PM, Brendan Horsfield <brendan.horsfield@vectalab=
s.com> wrote:
>=20
> =EF=BB=BF
> Martin, Marcus,
>=20
> I don't see how adding a circulator will protect the Rx port of the USRP w=
ithout blocking the signal from the CubeSat as well.
>=20
> Are you transmitting and receiving on different frequencies? If so, you co=
uld insert a filter between the Rx port and the switch to block the Tx frequ=
encies.
>=20
> On the other hand, if your Tx and Rx signals are in the same band, you can=
 add a second switch in cascade with the first one to increase the Tx-Rx iso=
lation. You can keep adding switches if necessary, until your isolation targ=
et is met.
>=20
> Regards,
> Brendan.=20
>=20
>> On Mon, 19 Apr 2021, 23:52 Marcus D. Leech, <patchvonbraun@gmail.com> wro=
te:
>> On 04/19/2021 09:49 AM, Martin Elfvelin wrote:
>>> Thank you for your input. Do you suggest adding a circulator to the syst=
em or rather replacing the switch with a circulator?
>>>=20
>>> Best regards,
>>> Martin
>> I'd say add a circulator in addition to your switch.
>>>=20
>>> On Mon, Apr 19, 2021 at 3:43 PM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>>>> A circulator can give you an additional 20dB isolation.=20
>>>>=20
>>>> Putting 5d!m into the RX2 port will likely destroy the RX amplifier in t=
he AD9361.=20
>>>>=20
>>>> Sent from my iPhone
>>>>=20
>>>> > On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via USRP-users <usrp-use=
rs@lists.ettus.com> wrote:
>>>> >=20
>>>> > =EF=BB=BF
>>>> > Hello all,
>>>> >=20
>>>> > I am planning on using a USRP B200 in a half-duplex communication sys=
tem to communicate with a CubeSat. The TX/RX port will be used for transmitt=
ing and the RX2 port for receiving. The transmitting port will be connected t=
o a power amplifier with a 60W output, this will in turn connect to an RF sw=
itch which will switch between the TX/RX (transmitting) and RX2 (receiving).=
 The RF switch has an isolation of ~40-43 dB which means from the 47.78 dBm t=
ransmitted we will have roughly 5-8 dBm reflected to RX2. Since the SDR is o=
nly rated to receive maximum 0 dBm I'm wondering if someone has any ideas on=
 how to handle this. I'm unsure if this power will simply fry the board and I=
 should implement a power limiter or if there are other workarounds.
>>>> >=20
>>>> > Appreciate any help you can provide.
>>>> > Best regards,
>>>> > Martin Elfvelin
>>>> > _______________________________________________
>>>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>=20
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-A5827727-164A-4B59-9818-AA1AB0F3FAF6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I was thinking a switch would get moved to t=
he RX port of the circulator, which would see the TX power reduced by 20dB. T=
hen into a switch that switched the RX port of the circulator between a 50 o=
hm load and the RX port.&nbsp;<br><br><div dir=3D"ltr">Sent from my iPhone</=
div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Apr 19, 2021, at 5:13 P=
M, Brendan Horsfield &lt;brendan.horsfield@vectalabs.com&gt; wrote:<br><br><=
/blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"auto">Martin, Marcus,<div dir=3D"auto"><br></div><div dir=3D"auto">I d=
on't see how adding a circulator will protect the Rx port of the USRP withou=
t blocking the signal from the CubeSat as well.</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Are you transmitting and receiving on different frequ=
encies? If so, you could insert a filter between the Rx port and the switch t=
o block the Tx frequencies.</div><div dir=3D"auto"><br></div><div dir=3D"aut=
o">On the other hand, if your Tx and Rx signals are in the same band, you ca=
n add a second switch in cascade with the first one to increase the Tx-Rx is=
olation. You can keep adding switches if necessary, until your isolation tar=
get is met.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,</div=
><div dir=3D"auto">Brendan.&nbsp;</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 19 Apr 2021, 23:52 Marcus D. L=
eech, &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div>On 04/19/2021 09:49 AM, Martin Elfvelin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Thank you for your input. Do you suggest adding a
          circulator to the system or rather replacing the switch with a
          circulator?</div>
        <div><br>
        </div>
        <div>Best regards,</div>
        <div>Martin<br>
        </div>
      </div>
    </blockquote>
    I'd say add a circulator in addition to your switch.<br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 19, 2021 at 3:43
          PM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">A
          circulator can give you an additional 20dB isolation. <br>
          <br>
          Putting 5d!m into the RX2 port will likely destroy the RX
          amplifier in the AD9361. <br>
          <br>
          Sent from my iPhone<br>
          <br>
          &gt; On Apr 19, 2021, at 9:12 AM, Martin Elfvelin via
          USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
          &gt; <br>
          &gt; =EF=BB=BF<br>
          &gt; Hello all,<br>
          &gt; <br>
          &gt; I am planning on using a USRP B200 in a half-duplex
          communication system to communicate with a CubeSat. The TX/RX
          port will be used for transmitting and the RX2 port for
          receiving. The transmitting port will be connected to a power
          amplifier with a 60W output, this will in turn connect to an
          RF switch which will switch between the TX/RX (transmitting)
          and RX2 (receiving). The RF switch has an isolation of ~40-43
          dB which means from the 47.78 dBm transmitted we will have
          roughly 5-8 dBm reflected to RX2. Since the SDR is only rated
          to receive maximum 0 dBm I'm wondering if someone has any
          ideas on how to handle this. I'm unsure if this power will
          simply fry the board and I should implement a power limiter or
          if there are other workarounds.<br>
          &gt; <br>
          &gt; Appreciate any help you can provide.<br>
          &gt; Best regards,<br>
          &gt; Martin Elfvelin<br>
          &gt; _______________________________________________<br>
          &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com<=
/a><br>
          &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave=
@lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.co=
m</a><br>
</blockquote></div>
</div></blockquote></body></html>=

--Apple-Mail-A5827727-164A-4B59-9818-AA1AB0F3FAF6--

--===============9030344635447304346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9030344635447304346==--
