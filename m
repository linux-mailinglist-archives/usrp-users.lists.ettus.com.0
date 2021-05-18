Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E85F4387A84
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 15:58:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E2C9E3840F2
	for <lists+usrp-users@lfdr.de>; Tue, 18 May 2021 09:58:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="vYrVt/Xp";
	dkim-atps=neutral
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 2061F3840D3
	for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 09:57:16 -0400 (EDT)
Received: by mail-yb1-f173.google.com with SMTP id l7so13363816ybf.8
        for <usrp-users@lists.ettus.com>; Tue, 18 May 2021 06:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=druPDOfQHU1Eeq4tP5K7vFtT+gyI1DkjyEa0dZM+HW8=;
        b=vYrVt/Xp98mnHZ+HesVEYDdbnhAnsNMaYRg4skaWFPJJAufFqTsoZzmDD+8RR4xFeS
         aLhJgGriv3zjMQt+hj3nf4tNCpC/6zcMm8YzWYTn/Kutayrz+APfv2fuDoEO7B6WwPSy
         jhsK5F3PROav6Bv4U8O2ZCHdye+eqTTzg3vYClwu7ih2RSm5h3AC0jZ2xKQUQtFLwQfj
         vm2Y403syR96alWtMIZvrL+azdc/O/GbnEhzbuyUEk2rwJHUo/aDutw4wsfuJrAbb4MU
         3hTmikil8MlZSbxb0WufCGASI8VFNpxVr1UOcewFm4z2DWQo/FQx/T6G5fg3UCBhIXdJ
         EbhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=druPDOfQHU1Eeq4tP5K7vFtT+gyI1DkjyEa0dZM+HW8=;
        b=RYVO5r+G2u/oZ+Uo0uJyrg8lVsjs0seNt6rrmG3aqd1nCsl+Ngbk38XKCIFEQAasVR
         b4zbkuQJfrbC4PcCJqCcqmoYAfXVbvdMaejg9y5D3jNqvWOz2bhLtks6lhvyXWdyupzk
         QZhkB08URunDfUozrHMdV8giAO71cgludM3vykaAVJu4EycjE4MLSn3utXfY/6zTtDTi
         AP+4s6BFI+WGYEiweBycLE4MbNdie74z9FFW/5Aw7zzHqQdDbnK7kwWfAh35wubA+9BM
         kTp83ALwGVCCBc56YKSCazEvmiZKq2GgaBh87LsdAtHX4mIunTCdDO43IaDqhe7w/ai7
         77qw==
X-Gm-Message-State: AOAM532Op6Je/ikZhZIuiRJebHmn6olZo0X+nr3nH8flHm8GJvpV2ewq
	HnVLJuE0cmOjNQgg1swfoYTdcVb49xD6DVc/MU0=
X-Google-Smtp-Source: ABdhPJxhXUxqYVKmEAM8X9Do1rN/CrgcoDByrJBO9jfQZ8wIWO0qZENC1InxF1hcivEbtLswngxO1n5pRipFlJxG4iY=
X-Received: by 2002:a25:9c88:: with SMTP id y8mr6945143ybo.294.1621346236458;
 Tue, 18 May 2021 06:57:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAL0m=NacROnWkmwJaSFc_EdtF3Rs9bFitbTwJQjCgPY==ZKpow@mail.gmail.com>
 <F69F86F2-31B7-487E-8714-6542540F800E@gmail.com> <CAL0m=NbmR3DY6e_AKX-inbdO-d1cAE+Yz1MJHTTj0uH2oRBi9Q@mail.gmail.com>
 <20210518135119.wqzzwhymc575acto@barbe>
In-Reply-To: <20210518135119.wqzzwhymc575acto@barbe>
From: "Zeng, Huacheng" <huacheng.zeng@gmail.com>
Date: Tue, 18 May 2021 09:57:04 -0400
Message-ID: <CAL0m=NYD9fyfp171+9VQ0wv+u1PPzdX1x1COx705gxynGdtnTw@mail.gmail.com>
To: =?UTF-8?Q?C=C3=A9dric_Hannotier?= <cedric.hannotier@ulb.be>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: FLXVBI7MIRJQ22I5Y7WU3YEZ3B65M3B3
X-Message-ID-Hash: FLXVBI7MIRJQ22I5Y7WU3YEZ3B65M3B3
X-MailFrom: huacheng.zeng@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Synchronization
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FLXVBI7MIRJQ22I5Y7WU3YEZ3B65M3B3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3436110668776098393=="

--===============3436110668776098393==
Content-Type: multipart/alternative; boundary="0000000000007b6a2805c29b161f"

--0000000000007b6a2805c29b161f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi C=C3=A9dric,

Thank you for the pointer. I will try it today and update here.

-Hua


On Tue, May 18, 2021 at 9:51 AM C=C3=A9dric Hannotier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Hua,
>
> On 17/05/21 16:27, Zeng, Huacheng wrote:
> > Hi Marcus,
> >
> > Thank you for the reply. I am using SBX (40MHz)  daughterboards for X31=
0.
> > For my software setting, I'm not sure what is the best way to present t=
he
> > details. So I copied my code below. Hopeful it is not messy for you to
> > review.
> > [...]
> > int main() {
> >     [...]
> >     sp.sync_opt =3D "internal"; //"pps", "mimo"
> >     [...]
> > void sdr_dev::configure_usrp(sdr_para sp) {
> >     [...]
> >     // clock and time sync_opthronization
> >     if (sync_opt =3D=3D "pps") {
> >         [...]
> >     } else if (sync_opt =3D=3D "mimo") {
> >         [...]
> >     } else {
> >         usrp -> set_time_now(uhd::time_spec_t(1.0));
> >     }
>
> It seems you are using set_time_now() to synchronize
> the two daughterboards inside your X310.
> Could this be related to [1]?
> Does using set_time_unknown_pps() instead of set_time_now() help?
>
> [1]
> https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W?h=
ash=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W
>
> Regards
> --
>
> C=C3=A9dric Hannotier
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007b6a2805c29b161f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0C=C3=A9dric,<div><br></div><div>Thank you for the =
pointer. I will try it today and update here.<div><br></div><div>-Hua<br></=
div><div><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Tue, May 18, 2021 at 9:51 AM C=C3=A9dric Hannot=
ier via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-u=
sers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Hua,<br>
<br>
On 17/05/21 16:27, Zeng, Huacheng wrote:<br>
&gt; Hi Marcus,<br>
&gt; <br>
&gt; Thank you for the reply. I am using SBX (40MHz)=C2=A0 daughterboards f=
or X310.<br>
&gt; For my software setting, I&#39;m not sure what is the best way to pres=
ent the<br>
&gt; details. So I copied my code below. Hopeful it is not messy for you to=
<br>
&gt; review.<br>
&gt; [...]<br>
&gt; int main() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0sp.sync_opt =3D &quot;internal&quot;; //&quot;pps&q=
uot;, &quot;mimo&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0[...]<br>
&gt; void sdr_dev::configure_usrp(sdr_para sp) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0// clock and time sync_opthronization<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (sync_opt =3D=3D &quot;pps&quot;) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0} else if (sync_opt =3D=3D &quot;mimo&quot;) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[...]<br>
&gt;=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp -&gt; set_time_now(uhd::time_spe=
c_t(1.0));<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
<br>
It seems you are using set_time_now() to synchronize<br>
the two daughterboards inside your X310.<br>
Could this be related to [1]?<br>
Does using set_time_unknown_pps() instead of set_time_now() help?<br>
<br>
[1] <a href=3D"https://lists.ettus.com/empathy/thread/YHNX5U6XFKBCV3XPC34LT=
3JFOG2ZGA2W?hash=3DYHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3J=
FOG2ZGA2W" rel=3D"noreferrer" target=3D"_blank">https://lists.ettus.com/emp=
athy/thread/YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W?hash=3DYHNX5U6XFKBCV3XPC34LT3J=
FOG2ZGA2W#YHNX5U6XFKBCV3XPC34LT3JFOG2ZGA2W</a><br>
<br>
Regards<br>
-- <br>
<br>
C=C3=A9dric Hannotier<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007b6a2805c29b161f--

--===============3436110668776098393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3436110668776098393==--
