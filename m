Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EF09F3370
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 15:45:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EB75C3851FE
	for <lists+usrp-users@lfdr.de>; Mon, 16 Dec 2024 09:45:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734360303; bh=8k3aJh9y8XbuP6JUQETekfS6+2CWcn1OR78tC1cMRu4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ogb7+xFwt2FG1/mvf2plL490f8V9kS3hiIv/ffQ5iAboZHheIhdBGM7Ms1OgBAmpR
	 zUYfHj/ZGpy9P7sW865ZGgwl6xh1L9bGf2iPZv5E7IzyED2CTj5e4QXdp9IuFKROGb
	 1pCzLSR9an117LPYm66ggwBuxXzo6OqyOpoR+UDdtrinppkRj7PF3vBmvNHPFQxbV9
	 147tvi8zCstVNV+fIKUjHg4+UJwuLMAWaQ8SkiP2mW0JAFXH9HVE/7BSSDRx/9WfTf
	 PnlEQJjQ/ziqjiAnXPub8szMM4eXsZUDEp2hXRPyr7gx0WUR6YtlyfyIFJItSc4SFn
	 snVjScQ2DBymw==
Received: from smtp.freepro.com (smtp.freepro.com [88.212.152.147])
	by mm2.emwd.com (Postfix) with ESMTPS id DDF5B3851E2
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 09:44:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=novagrid.com header.i=@novagrid.com header.b="KKFH68LN";
	dkim-atps=neutral
Received: from mail.novagrid.com (652615691.box.freepro.com [130.180.213.133])
	by smtp.freepro.com (Postfix) with ESMTPS id 4YBjQN60xJzcq69
	for <usrp-users@lists.ettus.com>; Mon, 16 Dec 2024 15:44:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novagrid.com;
	s=default; t=1734360284;
	bh=wL6IctLnI/y8h+UWrbzPwbUbf3bzYxCTMuQWjdP7ivw=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=KKFH68LNG8UfwadE4FEnTquZE20Fb2GuR/amVp1MV1K6EpaVJwAoNeHTQtIztIIWp
	 HFvpdVrUwALkr2+vgk0RpVP6smXrvOYGIHrejdrbTRR7SU1lSB6ZL1T02NiiRdFz3Z
	 raKSE5sGrBE9CHdisP5ewF1TWd/o0sSRNNWhrSS4=
Message-ID: <a45c41d1-4d2e-4299-0458-1c7d757ecdad@novagrid.com>
Date: Mon, 16 Dec 2024 15:44:43 +0100
MIME-Version: 1.0
Content-Language: en-US, fr
To: usrp-users@lists.ettus.com
References: <244d0fbb-2687-c74e-0b9d-e1de1122d382@novagrid.com>
 <CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmail.com>
From: Christophe Grimault <christophe.grimault@novagrid.com>
In-Reply-To: <CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmail.com>
X-Synology-Spam-Status: score=-0.1, required 5, T_FILL_THIS_FORM_SHORT 0, FROM_HAS_DN 0, FROM_EQ_ENVFROM 0, HTML_MISSING_CTYPE 0, TO_DN_NONE 0, TO_MATCH_ENVRCPT_ALL 0, __NOT_A_PERSON 0, MIME_GOOD -0.1, MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, RCVD_COUNT_ZERO 0, HTML_MESSAGE 0.001, ARC_NA 0, RCPT_COUNT_ONE 0, MISSING_XM_UA 0, MIME_TRACE 0, __FILL_THIS_FORM_SHORT 0, __THREADED 0, __NOT_SPOOFED 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
Message-ID-Hash: R2BBMYAO5654STQKBVO4QIDRQUSBUUBV
X-Message-ID-Hash: R2BBMYAO5654STQKBVO4QIDRQUSBUUBV
X-MailFrom: christophe.grimault@novagrid.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Sampling channels at different rates
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/R2BBMYAO5654STQKBVO4QIDRQUSBUUBV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0654802611779510160=="

This is a multi-part message in MIME format.
--===============0654802611779510160==
Content-Type: multipart/alternative;
 boundary="------------zpYnO5hoEU5BHA1IdEp0KMgs"
Content-Language: en-US, fr

This is a multi-part message in MIME format.
--------------zpYnO5hoEU5BHA1IdEp0KMgs
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello Brian,

Thank you for this quick answer.

So I guess this is not a limitation related to using Python vs C++/boost=20
? Right ?

I understand that using the same streamer is tricky. Concerning your=20
advice to go with 2 streamers, you think this a totally fine way to go ?

Otherwise, I was trying to use a single streamer because I wanted to=20
have zero delay between the start time of the 2 streams.

Chris

Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
www.novagrid.com

Le 16/12/2024 =C3=A0 15:27, Brian Padalino a =C3=A9crit=C2=A0:
> On Mon, Dec 16, 2024 at 9:15=E2=80=AFAM Christophe Grimault=20
> <christophe.grimault@novagrid.com> wrote:
>
>     Dear users,
>
>     I'm using python wrappers with UHD >=3D 4.5 and a X300 with 2 twinR=
x.
>
>     I would like to know if it is possible to create a streamer, for
>     more than N channels, with a sampling rate which different for
>     each channel.
>
>     As for now, when I try this, I get all my 4 channels with the same
>     sampling rate, which is the one of the last channel added.
>
>     Is it just possible to do it ? Say, for example,=C2=A0 have a strea=
mer
>     with 2 channels :
>
>       * chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s
>       * chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s
>
>     Thanks in advance
>
>
> I don't think this is possible, but if it is I don't think it's=20
> advisable.=C2=A0 You should use 2 different streamers.=C2=A0 The timest=
amps=20
> associated with them should be the same so on the host you can still=20
> align them, but the streamers itself I think would be weird trying to=20
> receive the same N samples over the 2 channels.
>
> Is there any particular reason you don't want to use 2 streamers?
>
> Brian
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------zpYnO5hoEU5BHA1IdEp0KMgs
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hello Brian,</p>
    <p>Thank you for this quick answer.</p>
    <p>So I guess this is not a limitation related to using Python vs
      C++/boost ? Right ?</p>
    <p>I understand that using the same streamer is tricky. Concerning
      your advice to go with 2 streamers, you think this a totally fine
      way to go ?</p>
    <p>Otherwise, I was trying to use a single streamer because I wanted
      to have zero delay between the start time of the 2 streams.</p>
    <p>Chris<br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">Christophe Grimault
NovaGrid SAS
Les Jardins de la Teillais
3, all=C3=A9e de la grande =C3=A9galonne
35740 Pac=C3=A9, France
Tel : (33)2 23 41 37 97
Mob: (33)6 82 22 46 93
<a class=3D"moz-txt-link-abbreviated" href=3D"http://www.novagrid.com">ww=
w.novagrid.com</a></pre>
    <div class=3D"moz-cite-prefix">Le 16/12/2024 =C3=A0 15:27, Brian Pada=
lino a
      =C3=A9crit=C2=A0:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAEXYVK65nb0wtqBhucDXEtDcaM3tYobRC8AXG1yQVy2eqLVFSQ@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Mon, Dec 16, 2024 at 9:15=E2=80=AFAM Christop=
he
          Grimault &lt;<a href=3D"mailto:christophe.grimault@novagrid.com=
"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">chri=
stophe.grimault@novagrid.com</a>&gt;
          wrote:</div>
        <div class=3D"gmail_quote gmail_quote_container">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <p>Dear users,</p>
              <p>I'm using python wrappers with UHD &gt;=3D 4.5 and a X30=
0
                with 2 twinRx.</p>
              <p>I would like to know if it is possible to create a
                streamer, for more than N channels, with a sampling rate
                which different for each channel.</p>
              <p>As for now, when I try this, I get all my 4 channels
                with the same sampling rate, which is the one of the
                last channel added.</p>
              <p>Is it just possible to do it ? Say, for example,=C2=A0 h=
ave
                a streamer with 2 channels : <br>
              </p>
              <ul>
                <li>chan 0 on fc =3D 140 Mhz, rx_rate=3D20 MS/s</li>
                <li>chan 1 on fc =3D 140 MHz, rx_rate=3D1 MS/s</li>
              </ul>
              <p>Thanks in advance<br>
              </p>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I don't think this is possible, but if it is I don't
            think it's advisable.=C2=A0 You should use 2 different
            streamers.=C2=A0 The timestamps associated with them should b=
e
            the same so on the host you can still align them, but the
            streamers itself I think would be weird trying to receive
            the same N samples over the 2 channels.</div>
          <div><br>
          </div>
          <div>Is there any particular reason you don't want to use 2
            streamers?</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------zpYnO5hoEU5BHA1IdEp0KMgs--

--===============0654802611779510160==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0654802611779510160==--
