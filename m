Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B17369B04
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 21:48:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E6E3384843
	for <lists+usrp-users@lfdr.de>; Fri, 23 Apr 2021 15:48:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="XVXPCKMR";
	dkim-atps=neutral
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 4349F384298
	for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 15:47:31 -0400 (EDT)
Received: by mail-ot1-f42.google.com with SMTP id 35-20020a9d05260000b029029c82502d7bso14861206otw.2
        for <usrp-users@lists.ettus.com>; Fri, 23 Apr 2021 12:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=grkqXEjp9/z1+ciOxZqvU93DzWJxBqacopW4IaGNFMU=;
        b=XVXPCKMR2gGEy0QQboNDaAkTRfJCAveSjrbtorPjAbsMgzsu+TLAYrqgujRlB3eaqo
         VsK5WDon3fPbM+IqIo/Z+AZK/ThlS15MHqROf+7sIhEaZd/Rx+H1trVHnNN/zQl3ufcr
         zCnv2w67R2gvGHEvW6E7d902zsUYOlCzc1QfqraRXBt4RHGu1lfdRq0JahdCYWnwDsmS
         sakQ3o2XaEGktElp7ZYo806tV2x2dULSN+9BgXu4IqACM0enrQ5QulcAON1okTcaE+Kt
         fYg6FrO0jFsxw2y9bdquDPPlJ55KxVWRg6evI9lOLdnE4zcle9dpWLYF4COpCrae+V4X
         /m8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=grkqXEjp9/z1+ciOxZqvU93DzWJxBqacopW4IaGNFMU=;
        b=K1lyOlMUn8n/L0+mIy1PYXi0Pi0SBMzUT+2ZhClUO/2aFZDNDbTl5E52u7cPvMzJwy
         Q74/SQQcP72Gltthjdn/Lybao5Kg3b9H4lbCIxwkOSSV9iGyY3H1PTvUl53b/xFfnHRE
         e70KXppgFth/Y+zXUHhnUDm5Y+HZ+z+/9RWnf9/JwtdW2cTsmmmuXuoecfy7+p+ZcMk8
         OYB0D8EJVe+ubNLMV+5wC2vAzT4YanOM/XT8xQhV1jSAXYROVkb56+sjHr0jcaohOjgB
         xUadMIZ/ZSlqqwMu20napGDkRfPfmcJ5MQNipwWF0HsBAihe7if79beagYSnLj8s+RHO
         Mnow==
X-Gm-Message-State: AOAM533t7FiVvTPYReJK3yi8qqB5Jwp3BgFy5WcI0B32dq9qVoagu8vz
	1ExYFMhUlbVex0LAFLpSc4EHK6+X73eYKVa4txVKzg==
X-Google-Smtp-Source: ABdhPJx9+s6uPOfwv3SnFdyvj8VB3ytvAHJNMe1s9BMrg0IjRpXOaKNVwdHB4WZ3qWrGy5RTdtR1nqi7fkU4fliAPoc=
X-Received: by 2002:a9d:70d5:: with SMTP id w21mr4588214otj.301.1619207250405;
 Fri, 23 Apr 2021 12:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k@lists.ettus.com>
In-Reply-To: <sjchtPrrPJYcAr2Z8yuCvd7L2gpkh7QTtYtpuylu1k@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 23 Apr 2021 15:47:19 -0400
Message-ID: <CAB__hTTgALJDdRHD_9BsejbJpN5XQ7HAqT5=_a6MQmTPKgS9Eg@mail.gmail.com>
To: jcasallas2019@gmail.com
Message-ID-Hash: AEAHR3S44AKKBW4KKEXKDN5VSPDPDLAF
X-Message-ID-Hash: AEAHR3S44AKKBW4KKEXKDN5VSPDPDLAF
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Counting actual samples using RFNoC custom block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AEAHR3S44AKKBW4KKEXKDN5VSPDPDLAF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1286500949612003786=="

--===============1286500949612003786==
Content-Type: multipart/alternative; boundary="000000000000faae6305c0a910df"

--000000000000faae6305c0a910df
Content-Type: text/plain; charset="UTF-8"

Julian,
If you are counting samples, you can only do so when both tvalid and
tready are simultaneously high at rising clock edge (this will work fine
even in the future if you "throttle" the input by controlling tready). Once
implemented, this will give you the accurate sample count you're looking
for.
Rob

On Fri, Apr 23, 2021 at 1:50 PM <jcasallas2019@gmail.com> wrote:

> Jonathon,
>
>
> Only when tvalid is high. The reason why I did not use pload_tready was
> because eventually (is not implemented yet) I want to decide when am ready
> to receive data. My goal here is to count samples for now, please let me
> know your thoughts.
>
>
> Also, I would like to mention that I am using the axis_data_clk and
> axis_data_rst. I can see other clock ce_clk which is also specified in the
> YAML file as clock domain but I do not see any ce_rst in my block verilog
> file, wonder if I am using the right clock for the user logic.
>
>
> Thanks a lot.
>
> Julian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000faae6305c0a910df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Julian,<div>If you are counting samples, you can only do s=
o when both tvalid and tready=C2=A0are simultaneously high at rising clock =
edge (this will work fine even in the future if you &quot;throttle&quot; th=
e input by controlling tready). Once implemented, this will give you the ac=
curate sample count you&#39;re looking for.</div><div>Rob</div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr =
23, 2021 at 1:50 PM &lt;<a href=3D"mailto:jcasallas2019@gmail.com">jcasalla=
s2019@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p>Jonathon,</p><p><br></p><p>Only when tvalid is high.  The=
 reason why I did not use pload_tready was because eventually (is not imple=
mented yet) I want to decide when am ready to receive data. My goal here is=
 to count samples for now, please let me know your thoughts.</p><p><br></p>=
<p>Also, I would like to mention that I am using the axis_data_clk and axis=
_data_rst. I can see other clock ce_clk which is also specified in the YAML=
 file as clock domain but I do not see any ce_rst in my block verilog file,=
  wonder if I am using the right clock for the user logic.</p><p><br></p><p=
>Thanks a lot.</p><p>Julian </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000faae6305c0a910df--

--===============1286500949612003786==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1286500949612003786==--
