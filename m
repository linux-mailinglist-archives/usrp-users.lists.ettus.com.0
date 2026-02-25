Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DCeJBs9n2kiZgQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 19:19:07 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2155819C269
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 19:19:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9CF82386518
	for <lists+usrp-users@lfdr.de>; Wed, 25 Feb 2026 13:19:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772043545; bh=0xd5vZ0DRAY2KUyzg3eok1fs4oZCVFpmN1h8FjtQXSE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DQPiM5C70F5/M4b4Bw44varIxu0//3Pd7GIDsJ0z6zOujE4yPCcGx5R1LYyhWTS6I
	 hlXIJ2CZsigGPLsKgVdohGn2AVBZmCpcoCyPcilnGMLylKTOgRqhWKTVZ4MeBNyZPm
	 i+up38v+RFiY8/QQ5Hw+0MB5KIKRWYKh7TcH2JRVOItjUFBbh0jwO0TGaEl47XyugC
	 qQVf3sc8rUZaVXYoBJVPDhrzzGZUPBlzPT38J+Ao/1uLuDp3nIBLRCz+49jSq6rwGW
	 92V/OA56clCvN+TlXEC7SbIInLRUOLcYgv8MAgxNjHQZZNaNM76c5EgRzHcaoB7T5M
	 J0Xw5tXlXoP+g==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DD5B3862BF
	for <usrp-users@lists.ettus.com>; Wed, 25 Feb 2026 13:18:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UPG9n76p";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-896f44dc48dso55716d6.2
        for <usrp-users@lists.ettus.com>; Wed, 25 Feb 2026 10:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772043513; x=1772648313; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oAKrqm8JjFULFvlv1lNYFB/jXWzuF7X6A2zOkEv6+3o=;
        b=UPG9n76pZf4dAFrFzbqiwOoxrFNDLybifaGyuTBQD3cJblVvvC9o7IvmrPiu1tjUQM
         TyilV6gmsFU6txMxqkwN/ySvfApidFEkA4r8LazbOBsOrXBFERg7lpffzyyTOJn3sEXc
         OgWwo+rNxtKOGMtyx6TlfSSbspKSZja4BrHw7fi/gF7UVut10ht2HhyBrvh4a+ptFUvD
         C+CaJjypv3awWBf5/147UUIYtf5dMeO/LL1Do700bFVxbVsmgEAAOsA9ZgS3BQ6NuHV1
         ottPbPCBh9Gl4pH3jCwOSlmuT9P1q5uMfTs6oPAm7pTfJpOwzvYIzg/OwBCjfwuDhajF
         UAgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772043513; x=1772648313;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oAKrqm8JjFULFvlv1lNYFB/jXWzuF7X6A2zOkEv6+3o=;
        b=LcMxN5IVyuKfqzw3J2nX/vR6EV+PjJdSAJ5Gr3UsbL/8IGbRoh5qrLBZ1DhkccIW0M
         O7zK+8WRwMoozHolfguiSIhbJpgBEsdoDl5R6JH6+v9FlDCaMNdWT5fYEY1eSlcLFz6G
         Gw/ICAN6Wt3ouXqYgkaVzxnRcug8FtdurqP05H+IiKTZQk2m8rawPKPaktk/iSp/36tv
         t4G3+7/Knpadk0gecF0Ri0ediX474lyzRLjlidhM2Ta7OqvpCKa3IrN4v4q23ePpz3CJ
         Sqo6F1o54NOKR+HHO9htSVHLVyOEV1KJEfrCOUVPD8oqQYZI1o4dYD28/pHdEjsxTC2+
         ogjg==
X-Gm-Message-State: AOJu0YwBUhw+Hx9z1WTQGNWyMU4MyAvu9//21wWi07LgVI/NaRQZSlUL
	YroBuZvlKZlV2z7amMuBJJkzSu2uQlUpohaTTcXE9INwkKEvkVdatBYqHXt3qQ==
X-Gm-Gg: ATEYQzxuKKk72CcW7MOp+DHJGZXA+hqSgnNB8iAXbobzGZcTyX2S7q1K6xqk+Hbr1Nd
	YVvnztKqCJS+jGMuI5aFSWTDrPavkT+KS0OD3BIvCAZgKHeWV/WTqdH3FmcXNRs/JDp+xXmYJBX
	DUAEe8Aecph8kXNdsYwamHeY0ylYZ8Za/7MHl+zWL2tTPG3ahQG/0XDAVE9CRN+0Lvp7F5l9KUA
	YlDscH4I197s1wqTB7xonkHB9U70VADL8dexthcJaETCcTO5Nwvk88Sk2pFbEtEzfGhGfNNbRjK
	vuT8jobjNNQ/Ms+Eweldq33pko8614yrPH9Cz+xgzjrMpx51aZu79QqgNZla1EtMHlCGd9i/nIv
	q9YqVD7PGE4evGGnFmm5CxcwqIZe4b4je2meu48YCsjWsqXpNm4tSBUSOwu5J1+bRpR2aX+CNwG
	iJGDTXk5TmCiLrbcYggkFlzvsIZIyuukA=
X-Received: by 2002:a05:6214:27cc:b0:899:bdae:bea9 with SMTP id 6a1803df08f44-899bdaec87amr27490106d6.7.1772043513150;
        Wed, 25 Feb 2026 10:18:33 -0800 (PST)
Received: from [192.168.2.208] ([76.68.79.204])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-8997c6bba49sm147634626d6.15.2026.02.25.10.18.32
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 10:18:32 -0800 (PST)
Message-ID: <1358eadb-869d-40a0-9860-ea170a9ce0c9@gmail.com>
Date: Wed, 25 Feb 2026 13:18:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <467c7e31778a4b5e9012fdf820209e5b@dlr.de>
 <CAJjPGR1yUsqhyOqYE1Ho8KGehjWNWxKmoSMJ6CWAAcN4KnOP3g@mail.gmail.com>
Content-Language: en-US
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJjPGR1yUsqhyOqYE1Ho8KGehjWNWxKmoSMJ6CWAAcN4KnOP3g@mail.gmail.com>
Message-ID-Hash: VA4446MR6TUCYMLJGM7TLGAUAR3EUH5B
X-Message-ID-Hash: VA4446MR6TUCYMLJGM7TLGAUAR3EUH5B
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Suitable PC hardware for X440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VA4446MR6TUCYMLJGM7TLGAUAR3EUH5B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2752330545504570353=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20230601];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_MIXED(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_TRACE(0.00)[emwd.com:+,gmail.com:-];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[patchvonbraun@gmail.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.957];
	TAGGED_RCPT(0.00)[usrp-users];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 2155819C269
X-Rspamd-Action: no action

This is a multi-part message in MIME format.
--===============2752330545504570353==
Content-Type: multipart/alternative;
 boundary="------------BNJ29ZTE4vYP0ut41ILAsYEp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BNJ29ZTE4vYP0ut41ILAsYEp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2026-02-25 13:03, Ryan Wolfarth wrote:
> Hi Emanuel,
>
> I'm in the process of building a similar workstation for work with an=20
> X440. I don't have any firm recommendations, but I am interested to=20
> hear from others on the forum. My understanding is that with full-rate=20
> streaming, existing workstations are not going to be able to do much=20
> more than write samples to storage. If you need any processing applied=20
> to those samples, you probably need to build a custom RFNoC block for=20
> the=C2=A0FPGA.
>
> I'm also targeting the Threadripper series hosted on a=C2=A0Asus Pro WS=
=20
> WRX90E-SAGE SE. As for SSDs, I'm planning to use mdadm to apply RAID 0=20
> to four gen 5 NVMe drives.
>
> Thanks,
> Ryan
It has been the case for quite some time that high-end SDR hardware=20
outstrips the ability of Moore's law to "keep up" on the=20
conventional-CPU end of things.
 =C2=A0 =C2=A0Carefully-constructed use of GPUs can help, but GPUs have t=
his=20
unpleasant latency problem in "set up" of the computations that means=20
you can't usefully use them
 =C2=A0 =C2=A0in the *middle* of a DSP flow.=C2=A0 At least that's the wa=
y it was a=20
couple of years ago when I looked into this.

Another approach might be to construct multiple flows, each comfortably=20
"sub Moore's-law", and using the "alternate stream destination" facility=20
stream sub-bands to
 =C2=A0 different computers.=C2=A0 =C2=A0This approach works for some typ=
es of=20
problems, but not others.


>
> On Wed, Feb 25, 2026 at 3:53=E2=80=AFAM Emanuel.Staudinger--- via USRP-=
users=20
> <usrp-users@lists.ettus.com> wrote:
>
>     Hi everybody,
>
>     we foresee a X440 for our research and are looking for hints on
>     suitable PC hardware/architectures for high-rate streaming and
>     storage of I/Q samples, as well as online-processing.
>
>     100Gbit-NICs can be found in the knowledge base, yet I would be
>     more be interested in suitable CPUs etc.
>
>     Given the high bandwidth we have a Ryzen Threadripper based system
>     in mind.
>
>     Does anyone have experience with Xeon oder Epyc based systems in
>     this regards?
>
>     Do you have recommendations for suitable SSDs for raw data storage
>     (not necessarily consumer grade, can also be SSDs built for servers=
)?
>
>     Any insight is highly appreciated.
>
>     Kind regards,
>
>     Emanuel
>
>     =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94
>
>     *Deutsches Zentrum f=C3=BCr Luft- und Raumfahrt*e.V. (DLR)
>
>     Institut f=C3=BCr Kommunikation und Navigation | Communication Syst=
ems
>     | Oberpfaffenhofen, M=C3=BCnchener Str. 20 | 82234 We=C3=9Fling
>
>     Dr.-Ing. *Emanuel Staudinger*
>
>     Telefon +49-8153-28-2887 | Telefax +49-8153-28-1871
>
>     DLR.de <http://www.dlr.de/>__
>
>     DLR is represented by the Executive Board and employees authorised
>     by it.
>     Head of DLR's legal department, Linder Hoehe, 51147 Cologne, can
>     provide information (DLR.de/imprint <https://DLR.de/imprint>).
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------BNJ29ZTE4vYP0ut41ILAsYEp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2026-02-25 13:03, Ryan Wolfarth
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJjPGR1yUsqhyOqYE1Ho8KGehjWNWxKmoSMJ6CWAAcN4KnOP3g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hi Emanuel,
        <div><br>
        </div>
        <div>I'm in the process of building a similar workstation for
          work with an X440. I don't have any firm recommendations, but
          I am interested to hear from others on the forum. My
          understanding is that with full-rate streaming, existing
          workstations are not going to be able to do much more than
          write samples to storage. If you need any processing applied
          to those samples, you probably need to build a custom RFNoC
          block for the=C2=A0FPGA.=C2=A0</div>
        <div><br>
        </div>
        <div>I'm also targeting the Threadripper series hosted on a=C2=A0=
Asus
          Pro WS WRX90E-SAGE SE. As for SSDs, I'm planning to use mdadm
          to apply RAID 0 to four gen 5 NVMe drives.=C2=A0</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Ryan</div>
      </div>
    </blockquote>
    It has been the case for quite some time that high-end SDR hardware
    outstrips the ability of Moore's law to "keep up" on the
    conventional-CPU end of things.<br>
    =C2=A0 =C2=A0Carefully-constructed use of GPUs can help, but GPUs hav=
e this
    unpleasant latency problem in "set up" of the computations that
    means you can't usefully use them<br>
    =C2=A0 =C2=A0in the *middle* of a DSP flow.=C2=A0 At least that's the=
 way it was a
    couple of years ago when I looked into this.<br>
    <br>
    Another approach might be to construct multiple flows, each
    comfortably "sub Moore's-law", and using the "alternate stream
    destination" facility stream sub-bands to<br>
    =C2=A0 different computers.=C2=A0 =C2=A0This approach works for some =
types of
    problems, but not others.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAJjPGR1yUsqhyOqYE1Ho8KGehjWNWxKmoSMJ6CWAAcN4KnOP3g@mail.gmai=
l.com"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 25, 2026 at
          3:53=E2=80=AFAM Emanuel.Staudinger--- via USRP-users &lt;<a
            href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">usrp=
-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
          <div>
            <div lang=3D"EN-US">
              <div>
                <p class=3D"MsoNormal"><span lang=3D"DE">Hi everybody,</s=
pan></p>
                <p class=3D"MsoNormal"><span lang=3D"DE">=C2=A0</span></p=
>
                <p class=3D"MsoNormal">we foresee a X440 for our research
                  and are looking for hints on suitable PC
                  hardware/architectures for high-rate streaming and
                  storage of I/Q samples, as well as online-processing.</=
p>
                <p class=3D"MsoNormal">100Gbit-NICs can be found in the
                  knowledge base, yet I would be more be interested in
                  suitable CPUs etc.</p>
                <p class=3D"MsoNormal">Given the high bandwidth we have a
                  Ryzen Threadripper based system in mind.</p>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">Does anyone have experience with
                  Xeon oder Epyc based systems in this regards?</p>
                <p class=3D"MsoNormal">Do you have recommendations for
                  suitable SSDs for raw data storage (not necessarily
                  consumer grade, can also be SSDs built for servers)?</p=
>
                <p class=3D"MsoNormal">=C2=A0</p>
                <p class=3D"MsoNormal">Any insight is highly appreciated.=
</p>
                <p class=3D"MsoNormal">Kind regards,</p>
                <p class=3D"MsoNormal">Emanuel</p>
                <p class=3D"MsoNormal"><span lang=3D"DE"
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:dimgray">=E2=80=
=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=
=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=
=94<span></span></span></p>
                <p class=3D"MsoNormal"><b><span lang=3D"DE"
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:dimgray">Deuts=
ches
                      Zentrum f=C3=BCr Luft- und Raumfahrt</span></b><spa=
n
                    lang=3D"DE"
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:dimgray"> e.V.
                    (DLR)</span></p>
                <p class=3D"MsoNormal" style=3D"line-height:16pt"><a
name=3D"m_-7474683484356104355_m_1223067260780431128_Institut"
                    moz-do-not-send=3D"true"></a><span lang=3D"DE"
style=3D"font-size:8.5pt;font-family:Arial,sans-serif;color:dimgray">Inst=
itut
                    f=C3=BCr Kommunikation und Navigation | Communication
                    Systems | Oberpfaffenhofen, M=C3=BCnchener Str. 20 |
                    82234 We=C3=9Fling</span></p>
                <p class=3D"MsoNormal"><span lang=3D"DE"
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:rgb(31,73,125)=
">=C2=A0</span></p>
                <p class=3D"MsoNormal"><a
name=3D"m_-7474683484356104355_m_1223067260780431128_Funktion"
                    moz-do-not-send=3D"true"></a><span lang=3D"DE"
style=3D"font-size:10pt;font-family:Arial,sans-serif;color:dimgray">Dr.-I=
ng.
                    <b>Emanuel Staudinger</b> </span></p>
                <p class=3D"MsoNormal" style=3D"line-height:16pt"><a
name=3D"m_-7474683484356104355_m_1223067260780431128_Telefon"
                    moz-do-not-send=3D"true"></a><span lang=3D"DE"
style=3D"font-size:8.5pt;font-family:Arial,sans-serif;color:dimgray">Tele=
fon
                    +49-8153-28-2887 | Telefax +49-8153-28-1871</span></p=
>
                <p class=3D"MsoNormal" style=3D"line-height:16pt"><span
                    lang=3D"DE"
style=3D"font-size:8.5pt;font-family:Arial,sans-serif;color:dimgray"><a
                      href=3D"http://www.dlr.de/" target=3D"_blank"
                      moz-do-not-send=3D"true"><span lang=3D"EN-US"
                        style=3D"color:blue">DLR.de</span></a></span><u><=
span
style=3D"font-size:8.5pt;font-family:Arial,sans-serif;color:blue"></span>=
</u></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:7pt;color:rgb(115,115,115)">=C2=A0=
</span></p>
                <p class=3D"MsoNormal"><span
                    style=3D"font-size:7pt;color:rgb(115,115,115)">DLR is
                    represented by the Executive Board and employees
                    authorised by it.<br>
                    Head of DLR's legal department, Linder Hoehe, 51147
                    Cologne, can provide information (</span><span
                    style=3D"font-size:12pt"><a
                      href=3D"https://DLR.de/imprint" target=3D"_blank"
                      moz-do-not-send=3D"true"><span
                        style=3D"font-size:7pt;color:blue">DLR.de/imprint=
</span></a></span><span
                    style=3D"font-size:7pt;color:rgb(115,115,115)">).</sp=
an><span
                    style=3D"font-size:12pt"></span></p>
                <p class=3D"MsoNormal">=C2=A0</p>
              </div>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre wrap=3D"" class=3D"moz-quote-pre">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------BNJ29ZTE4vYP0ut41ILAsYEp--

--===============2752330545504570353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2752330545504570353==--
