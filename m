Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 347F86D3A4D
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 22:40:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 38F033844C0
	for <lists+usrp-users@lfdr.de>; Sun,  2 Apr 2023 16:40:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1680468015; bh=CAEGB+eIRH/nE0n5SDgt/6wqrcHm7+5UmKKImz1QYOQ=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LOyYh1JXXY07+2X6Op7uAK4NS9q+2gAmOLFkp8MtH7TlUP53ujDNzXBMVC2eLKiW/
	 2YbSw9WIrdZj+M2xyDW+QPLyr/JvM2lgQbNWcbkfPEzEfwCVWncqzbd66yzq0PWVbG
	 XebjJJkqkF4xvgxe4DWAJZEdWLmC+HIzJlgPlyyihhKizh6mQAZdGyAStFDou5xCOn
	 +rIaUs8vPPjyFZT9hpWcncLKHlYn75ZGknOvQ2ME0WQMhm2nBYJWIxXAehrfiw8Xu7
	 zRrGqvYQug5JDTw1/qo5begWpRiVhorUozI1EQEnpHJ5/XeUnwwWD08WeXDuY8kInl
	 kojV2TcKPnPNA==
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 64742383DD5
	for <usrp-users@lists.ettus.com>; Sun,  2 Apr 2023 16:39:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=iitrpr.ac.in header.i=@iitrpr.ac.in header.b="Lf0MKyHK";
	dkim-atps=neutral
Received: by mail-pj1-f41.google.com with SMTP id x15so25359331pjk.2
        for <usrp-users@lists.ettus.com>; Sun, 02 Apr 2023 13:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iitrpr.ac.in; s=google; t=1680467982;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BkP2UQC5T0PAoDvzQEv8rwn1czx1H2b9hOuyAyfRg9s=;
        b=Lf0MKyHKwNKwD2J0rRN1EFDxOQEHx0ecgFwn4BCl/HyVIbTHvScLtSmVdKJxZzBO2k
         qXKkLv0hd46gPQrJXaznLKNvfEWpm4yB4ZZx5tOrvI7RmK2C0WaQ0U3x8I0Pwrvlk6yU
         HgAm75XUKRAqFVRkqhCakpmaTLGBz30dzhQsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680467982;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BkP2UQC5T0PAoDvzQEv8rwn1czx1H2b9hOuyAyfRg9s=;
        b=RTMgXc2INdlQdDssgDorhiw7awKntDKdw+C7djUxQTkK+/XmkR/I5WuDnBIa+ONrKM
         M/TFQbNtM1hxpWipegMxe/Km4F/BLQDzAf0j9HBfFm22LZSUPdxsG9QR+NNo1UOO1bJO
         NoF70zNIffHEoRlIaeEQWTWXpGxxg/rxQJiy9nM8s89KO7Rc5GlPTqD1MkQL2IVB29Ms
         uaAdnNX0MRvYQvHpdG9Wh6pnZvIQoCEkX9MWre9g0ivCxaOVoKgnK4vyP2ogRXce8RTc
         iCRXPJzG4Fg7QqcS+6z44C0DEivQ0LGZmtXR/MH/kHcvzTCo/DcT7ellQAG5gYaUuBDt
         ksjQ==
X-Gm-Message-State: AAQBX9dihV7rA1+uXazQSL1XmaJem174Oegzeqj6nJur5rc53BVWGScM
	fsheDJ3x9dQjzGucCtt9BQf0ePgUH17wj9ZkODpPeid//bIs3tECeP183vz2ibuBroCP5R8mQmr
	89sKg4so/HG1wT3qHaZzG561F1kghqPlfxak4GYbifVE=
X-Google-Smtp-Source: AKy350YxWjYPufw23/15n2bSInsy/lsBVGauKFAp4zMLznknF9Nzl2nEX3w8xywpt8IY0GIYnfziXCzv1CdIUmAW4QI=
X-Received: by 2002:a17:902:c104:b0:19a:e3d4:216e with SMTP id
 4-20020a170902c10400b0019ae3d4216emr11500475pli.7.1680467982252; Sun, 02 Apr
 2023 13:39:42 -0700 (PDT)
MIME-Version: 1.0
References: <CA+QP_PnWu9XRxLE22CCervTjWKqs0fMJ7EFqnojX3zzyDZ1BHQ@mail.gmail.com>
 <650df62f-683c-925d-330d-be87fa636a33@gmail.com> <CA+QP_Pki5XvrwnR_Lzdv+_g4epw1fpeuciFox+3wg9RU7fCrdA@mail.gmail.com>
 <9030645b-863d-ca49-edfc-b8a9dd24fc07@gmail.com>
In-Reply-To: <9030645b-863d-ca49-edfc-b8a9dd24fc07@gmail.com>
Date: Mon, 3 Apr 2023 02:09:32 +0530
Message-ID: <CA+QP_PkyAJUwjB4y=QRA0-=TzPVXjX4qF=OrtSE4w9G3j5765w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 7JX4C3QNIK3ZRG5TB6YL5TWHZ54QIDZY
X-Message-ID-Hash: 7JX4C3QNIK3ZRG5TB6YL5TWHZ54QIDZY
X-MailFrom: arhum.19eez0005@iitrpr.ac.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Karunya Choppara <kchoppar@mathworks.com>, Mike McLernon <mmclerno@mathworks.com>, Houman Zarrinkoub <hzarrink@mathworks.com>, Sathish Varala <sathishv@mathworks.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: HELP regarding USRP N200
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7JX4C3QNIK3ZRG5TB6YL5TWHZ54QIDZY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Arhum Ahmad via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Arhum Ahmad <arhum.19eez0005@iitrpr.ac.in>
Content-Type: multipart/mixed; boundary="===============2167793495489896814=="

--===============2167793495489896814==
Content-Type: multipart/alternative; boundary="00000000000023e6ab05f8607165"

--00000000000023e6ab05f8607165
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you very much. Can you share some links which instruct how I can do
the same as per your suggestion? It will be very helpful.

One more question: if I change the subnet (default for N-series
255.255.255.0), will it cause any problems?

On Mon, Apr 3, 2023 at 1:47=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmail=
.com>
wrote:

> On 02/04/2023 16:04, Arhum Ahmad wrote:
>
> Thank you for the response.
>
> Sir, both of my ports are "Gigabit Ethernet," so I was hoping two N200
> might respond on ping in the windows command window since I have changed
> the IP of both N-200 to "192.168.10.1" and "192.168.10.2". Is there any
> way to connect multiple N-series in windows with my setting or a way to
> resolve the issue?
>
> If two USRP are recognized by PC, the rest is easy to use in MATLAB.
>
> Your network cards need to be on different IP subnets for this to work.
> This is just standard IP networking stuff.
>
> With both devices on 192.168.10.X, the routing stack in your computer has
> NO WAY of knowing how to route things, since
>   your cards will both be on the same IP subnet.   I'd make the second
> card on 192.168.20.X, and program your IP address  on
>   the N200 appropriately.
>
>
>
>
> On Mon, Apr 3, 2023 at 12:26=E2=80=AFAM Marcus D. Leech <patchvonbraun@gm=
ail.com>
> wrote:
>
>> On 02/04/2023 13:34, Arhum Ahmad wrote:
>> > Respected sir,
>> >
>> > I am trying to connect multiple USRP N200 simultaneously to the same
>> > system to use in MATLAB. However, It is not recognized by the system.
>> > My PC has 2 ethernet ports (10 and 5 Gbit). N-200 connects via a
>> > 10Gbit port but not by 5 Gbit. I have changed the IP of N-200, but it
>> > doesn't work. I have tried to use a router to make a local LAN to
>> > connect the PC to 2 N-200, but it did not work either. Is there any
>> > specific way to connect multiple N-200 in the PC and use it in MATLAB
>> > for simultaneous operation?It will be very helpful for my experiment.
>> The N200 ONLY supports 1GBit connections.  It doesn't autoconfigure.  It
>> MUST use a standard 1GIGe connection.
>>
>> Each N200 will need to have a unique IP address.    Your network ports
>> need to be configured accordingly.
>>
>> I'm doubting that your report of a successful connection to a *10Gbit*
>> port
>>    is actually correct.  It must be a *1GiGe* port.
>>
>> I can't help with MATLAB.  And indeed, there are only a handful of
>> MATLAB users on the usrp-users mailing list.
>>
>>
>>
>>
>
> --
> *Thanks and Regards*
> *Arhum Ahmad*
> Ph.D. Scholar, Electrical Engineering Department, IIT Ropar
>
> +91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
> <2016eez0009@iitrpr.ac.in>
> Lab No. 323, Communication Research Lab, J.C.Bose Building
>
> * CONFIDENTIALITY NOTICE: The contents of this email message and any
> attachments are intended solely for the addressee(s) and may contain
> confidential and/or privileged information and may be legally protected
> from disclosure. If you are not the intended recipient of this message or
> their agent, or if this message has been addressed to you in error, pleas=
e
> immediately alert the sender by reply email and then delete this message
> and any attachments. If you are not the intended recipient, you are hereb=
y
> notified that any use, dissemination, copying, or storage of this message
> or its attachments is strictly prohibited. *
>
>
>

--=20
*Thanks and Regards*
*Arhum Ahmad*
Ph.D. Scholar, Electrical Engineering Department, IIT Ropar

+91- <+91-7015802356>7974897279 | arhum.19eez0005@iitrpr.ac.in
<2016eez0009@iitrpr.ac.in>
Lab No. 323, Communication Research Lab, J.C.Bose Building

--=20
**CONFIDENTIALITY NOTICE:=C2=A0The
 contents of this email message and any=20
attachments are intended solely=20
for the addressee(s) and may contain=20
confidential and/or privileged=20
information and may be legally protected=20
from disclosure. If you are not
 the intended recipient of this message or=20
their agent, or if this=20
message has been addressed to you in error, please=20
immediately alert the
 sender by reply email and then delete this message=20
and any attachments.
 If you are not the intended recipient, you are hereby=20
notified that any
 use, dissemination, copying, or storage of this message=20
or its=20
attachments is strictly prohibited.*























*

--00000000000023e6ab05f8607165
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you very much. Can you share some links which instru=
ct how I can do the same as per your suggestion? It will be very helpful.<d=
iv><br></div><div>One more question: if I change the subnet (default for N-=
series 255.255.255.0), will it cause any problems?</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023=
 at 1:47=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gma=
il.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 02/04/2023 16:04, Arhum Ahmad wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thank you for the response.
        <div><br>
        </div>
        <div>Sir, both of my ports are &quot;<span style=3D"color:rgb(0,0,0=
);font-family:Roboto,sans-serif;font-size:14px">Gigabit
            Ethernet,&quot; so I was hoping two N200=C2=A0 might respond on=
 ping
            in the windows=C2=A0command window=C2=A0since I have changed th=
e IP of
            both N-200 to &quot;</span><span style=3D"background-color:rgb(=
251,252,253);color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px"=
>192.168.10.1&quot;
            and &quot;</span><span style=3D"background-color:rgb(251,252,25=
3);color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px">192.168.1=
0.2&quot;.
            Is there any way to connect multiple N-series in windows
            with my setting or a way to resolve the issue?</span>
          <div><span style=3D"background-color:rgb(251,252,253);color:rgb(0=
,0,0);font-family:monospace,fixed;font-size:14.7px"><br>
            </span></div>
          <div><span style=3D"color:rgb(0,0,0);font-family:monospace,fixed;=
font-size:14.7px;background-color:rgb(251,252,253)">If
              two USRP are recognized by PC, the rest is easy to use in
              MATLAB</span><span style=3D"background-color:rgb(251,252,253)=
;color:rgb(0,0,0);font-family:monospace,fixed;font-size:14.7px">.</span></d=
iv>
        </div>
      </div>
    </blockquote>
    Your network cards need to be on different IP subnets for this to
    work.=C2=A0 This is just standard IP networking stuff.<br>
    <br>
    With both devices on 192.168.10.X, the routing stack in your
    computer has NO WAY of knowing how to route things, since<br>
    =C2=A0 your cards will both be on the same IP subnet.=C2=A0=C2=A0 I&#39=
;d make the
    second card on 192.168.20.X, and program your IP address=C2=A0 on<br>
    =C2=A0 the N200 appropriately.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>
          <div><span style=3D"background-color:rgb(251,252,253);color:rgb(0=
,0,0);font-family:monospace,fixed;font-size:14.7px"><br>
            </span></div>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Apr 3, 2023 at
          12:26=E2=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbr=
aun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          02/04/2023 13:34, Arhum Ahmad wrote:<br>
          &gt; Respected sir,<br>
          &gt;<br>
          &gt; I am trying to connect multiple USRP N200 simultaneously
          to the same <br>
          &gt; system to use in MATLAB. However, It is not recognized by
          the=C2=A0system. <br>
          &gt; My PC has 2 ethernet=C2=A0ports (10 and 5 Gbit). N-200
          connects via a <br>
          &gt; 10Gbit port but not by 5 Gbit. I have changed the IP of
          N-200, but it <br>
          &gt; doesn&#39;t=C2=A0work. I have tried to use a router to make =
a
          local LAN to <br>
          &gt; connect the PC to 2 N-200, but it did not work either. Is
          there any <br>
          &gt; specific way to connect multiple N-200 in the PC and use
          it in MATLAB <br>
          &gt; for simultaneous operation?It will be very helpful for my
          experiment.<br>
          The N200 ONLY supports 1GBit connections.=C2=A0 It doesn&#39;t
          autoconfigure.=C2=A0 It <br>
          MUST use a standard 1GIGe connection.<br>
          <br>
          Each N200 will need to have a unique IP address.=C2=A0=C2=A0=C2=
=A0 Your
          network ports <br>
          need to be configured accordingly.<br>
          <br>
          I&#39;m doubting that your report of a successful connection to a
          *10Gbit* port<br>
          =C2=A0=C2=A0 is actually correct.=C2=A0 It must be a *1GiGe* port=
.<br>
          <br>
          I can&#39;t help with MATLAB.=C2=A0 And indeed, there are only a
          handful of <br>
          MATLAB users on the usrp-users mailing list.<br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <div><br>
      </div>
      <span>-- </span><br>
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>
            <div dir=3D"ltr">
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b style=3D"color:rgb(53,28,117)=
;font-family:Arial,Helvetica,sans-serif;font-size:small"><span>Thanks and R=
egards</span></b><b><br>
                </b></div>
              <div style=3D"color:rgb(100,100,100);font-family:Arial;font-s=
ize:12px;margin-bottom:5px;margin-top:0px"><b>Arhum
                  Ahmad</b><br>
                Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT
                Ropar</div>
              <table style=3D"color:rgb(100,100,100);font-family:Arial;font=
-size:12px;width:470px;margin-top:5px" width=3D"470" cellspacing=3D"0" cell=
padding=3D"0" border=3D"0">
                <tbody>
                  <tr>
                    <td style=3D"color:rgb(141,141,141)">
                      <p style=3D"margin:0px"><span style=3D"display:inline=
-block"><a href=3D"tel:+91-7015802356" style=3D"color:rgb(141,141,141);font=
-family:sans-serif" target=3D"_blank">+91-</a>7974897279</span>=C2=A0<span =
style=3D"color:rgb(69,102,142);display:inline-block">|</span>=C2=A0arhum.19=
eez0005<span style=3D"display:inline-block"><a href=3D"mailto:2016eez0009@i=
itrpr.ac.in" style=3D"color:rgb(141,141,141);font-family:sans-serif" target=
=3D"_blank">@iitrpr.ac.in</a></span></p>
                    </td>
                  </tr>
                  <tr>
                    <td style=3D"font-family:sans-serif;color:rgb(141,141,1=
41)"><span style=3D"display:inline-block">Lab No. 323,
                        Communication Research Lab, J.C.Bose Building</span=
></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <br>
      <b><font size=3D"1"><span><span><span>
                <div>
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">
                                    <div dir=3D"ltr">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr">
                                          <div dir=3D"ltr">
                                            <div dir=3D"ltr">
                                              <div dir=3D"ltr">
                                                <div dir=3D"ltr">
                                                  <div dir=3D"ltr">
                                                    <div dir=3D"ltr">
                                                      <div dir=3D"ltr">
                                                        <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div dir=3D"ltr">
                                                          <div><span><span>=
<span><span><i>CONFIDENTIALITY
                                                          NOTICE:=C2=A0The
                                                          contents of
                                                          this email
                                                          message and
                                                          any
                                                          attachments
                                                          are intended
                                                          solely for the
                                                          addressee(s)
                                                          and may
                                                          contain
                                                          confidential
                                                          and/or
                                                          privileged
                                                          information
                                                          and may be
                                                          legally
                                                          protected from
                                                          disclosure. If
                                                          you are not
                                                          the intended
                                                          recipient of
                                                          this message
                                                          or their
                                                          agent, or if
                                                          this message
                                                          has been
                                                          addressed to
                                                          you in error,
                                                          please
                                                          immediately
                                                          alert the
                                                          sender by
                                                          reply email
                                                          and then
                                                          delete this
                                                          message and
                                                          any
                                                          attachments.
                                                          If you are not
                                                          the intended
                                                          recipient, you
                                                          are hereby
                                                          notified that
                                                          any use,
                                                          dissemination,
                                                          copying, or
                                                          storage of
                                                          this message
                                                          or its
                                                          attachments is
                                                          strictly
                                                          prohibited.<span>=
</span></i></span></span></span></span></div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </span></span></span></font></b>
    </blockquote>
    <br>
  </div>

</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"color:rgb(100,100,100);f=
ont-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b style=
=3D"color:rgb(53,28,117);font-family:Arial,Helvetica,sans-serif;font-size:s=
mall"><span style=3D"font-family:&quot;times new roman&quot;,serif">Thanks =
and Regards</span></b><b><br></b></div><div style=3D"color:rgb(100,100,100)=
;font-family:Arial;font-size:12px;margin-bottom:5px;margin-top:0px"><b>Arhu=
m Ahmad</b><br>Ph.D. Scholar,=C2=A0Electrical Engineering Department, IIT R=
opar</div><table width=3D"470" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"color:rgb(100,100,100);font-family:Arial;font-size:12px;wid=
th:470px;margin-top:5px"><tbody><tr><td style=3D"color:rgb(141,141,141)"><p=
 style=3D"margin:0px"><span style=3D"display:inline-block"><a href=3D"tel:+=
91-7015802356" style=3D"color:rgb(141,141,141);font-family:sans-serif" targ=
et=3D"_blank">+91-</a>7974897279</span>=C2=A0<span style=3D"color:rgb(69,10=
2,142);display:inline-block">|</span>=C2=A0arhum.19eez0005<span style=3D"di=
splay:inline-block"><a href=3D"mailto:2016eez0009@iitrpr.ac.in" style=3D"co=
lor:rgb(141,141,141);font-family:sans-serif" target=3D"_blank">@iitrpr.ac.i=
n</a></span></p></td></tr><tr><td style=3D"font-family:sans-serif;color:rgb=
(141,141,141)"><span style=3D"display:inline-block">Lab No. 323, Communicat=
ion Research Lab, J.C.Bose Building</span></td></tr></tbody></table></div><=
/div></div></div>

<br>
<b><font size=3D"1"><span><span><span><div><div dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div><span><span><span><span><i>CONFIDENTIALI=
TY NOTICE:=C2=A0The
 contents of this email message and any attachments are intended solely=20
for the addressee(s) and may contain confidential and/or privileged=20
information and may be legally protected from disclosure. If you are not
 the intended recipient of this message or their agent, or if this=20
message has been addressed to you in error, please immediately alert the
 sender by reply email and then delete this message and any attachments.
 If you are not the intended recipient, you are hereby notified that any
 use, dissemination, copying, or storage of this message or its=20
attachments is strictly prohibited.<span></span></i></span></span></span></=
span></div></div></div></div></div></div></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div><=
/span></span></span></font></b>
--00000000000023e6ab05f8607165--

--===============2167793495489896814==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2167793495489896814==--
