Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E00DE5FF204
	for <lists+usrp-users@lfdr.de>; Fri, 14 Oct 2022 18:07:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D81F0383BAD
	for <lists+usrp-users@lfdr.de>; Fri, 14 Oct 2022 12:07:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665763635; bh=nHpqb24E0lXfD1af+o2hBh3X6zPSQL/wRQSVBp7ZqMI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=lI0lPJzK5fBX3FKzuLxFf4ZRtJDa9YRboA/93nTTSiGJDfZhqKe+wz9zvt2em28m0
	 kNpozO1e0DhQtm+jiuGObikMRAzlz8Peii0ZXAiipipEo8vq+qUIEB5Zx2QSe3DzhI
	 WjIYxu6za9b0uJpa/y7f9D9WhUXClspqTVkAJty51/+XFPEKNufqHZ5Gsn3ph+2YfU
	 G/mx0Baw9CbubhY9FhxpJQVjJHsh1XimHHNtwt7mxab1np0ARr+1N8/6Tlltbxki8i
	 P15iqli1m0YWLu5LQ2e6npQNbMIGqrPBPUr3telASDVCSJgjMpNXDAopgNGtJ5fxAF
	 hiacxm1Qygy9A==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 3ED12383AEB
	for <usrp-users@lists.ettus.com>; Fri, 14 Oct 2022 12:06:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="7tgMi46J";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id ot12so11552226ejb.1
        for <usrp-users@lists.ettus.com>; Fri, 14 Oct 2022 09:06:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DAZqbQHDmJgKEXz0Kf593cg+QyWYfV4s8Sad4fdTD/U=;
        b=7tgMi46JJyqvKzAhX62NsituZiIDbX4OtRms7prdY6jo4FFwa91oQWKgUNTmgxtB+i
         A2MJY0Dbywe1prZN2Cb/+2Bopaqo4cUXnrkB648djfIqLfxnYnuB96Gp7MzqkEU5CYPQ
         Bv3G6L0tHPVDKYsZU9IBD5b9OV+fp9U0IixdA/BVkqlv2ifNfo65YzWo6SSKiO6ekqzJ
         MV90+WygBpiLEFLo2y5LQ2pqYBr7PsFHLEj9m9r4uFXUuAlWZBaTq59JmmhKaKYaNK+o
         mwI2o3FN/+pKLeP5e1g9W8ckLWlhA79DwwaBZoSz2kcHTuwbDPhoj5GHVUYaHgYE5sId
         BVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DAZqbQHDmJgKEXz0Kf593cg+QyWYfV4s8Sad4fdTD/U=;
        b=2miiKsK7UrRyF8OfD2wGuguMfQ73v0Wf3fvB5VkOqjR7uihylS2LYKTfwj5Idw8fz5
         1A6lAnHD80w26IGnYZUAtjMk9KkmnWYkqS/1UxxDJ3QBEwh5UAAHCt4YVRkaygHcMqKo
         WgbuM9/08LpV7UHdBQL/0LhyKWnNmxmC+ff3F9R0wDdw5pCm33iknnMqnXNm1jhjtmYD
         igCSUmq1u/xydP5vS5pRS8ep/3o1pocCVv1724BBZRXvoWvZeKY8++3Ua9yrHhY/HCvw
         WSpCjWRzPtSr8nCjRkWScbJ89n5qOe9YAm8jd/2L6rg5Pj0i0OgV/l1bDZhvesBXW373
         /X7w==
X-Gm-Message-State: ACrzQf0KyrBadva5IvH9saklt1Uzig86OKD7lq+xcmSVcPvrPgnzwSrv
	FilhX7N6ldHd5cLnI4YtLZW+aIub49sjQE/Jn9+s0CZ9ofbwgw==
X-Google-Smtp-Source: AMsMyM5/RidMBqBZADa6khiuW/Ecx+Xa1l8CHDZLSE4u6n5tp24V4tqy0MZfhS9XKHLUz9WoNnak+mjBEb9qFpHnDrw=
X-Received: by 2002:a17:906:c14f:b0:78d:105b:e57f with SMTP id
 dp15-20020a170906c14f00b0078d105be57fmr4186505ejc.672.1665763567228; Fri, 14
 Oct 2022 09:06:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtNSw1qOgaKJbRRnUpTfn4A-zK_10frYCk7CoCo93Drhw@mail.gmail.com>
In-Reply-To: <CAA=S3PtNSw1qOgaKJbRRnUpTfn4A-zK_10frYCk7CoCo93Drhw@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 14 Oct 2022 11:05:57 -0500
Message-ID: <CAFche=hOWymQFaD9KkAjX9WSuLAPkmqJBWytMnU5+hu_-fPzEQ@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: 3SWCKCUDLY7HQSCPHNPDRGNUMTNREUJ6
X-Message-ID-Hash: 3SWCKCUDLY7HQSCPHNPDRGNUMTNREUJ6
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why initialize large array in Verilog is not successfully in RFNOC blocks...
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3SWCKCUDLY7HQSCPHNPDRGNUMTNREUJ6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8364709272640583303=="

--===============8364709272640583303==
Content-Type: multipart/alternative; boundary="000000000000b4772105eb00cd4c"

--000000000000b4772105eb00cd4c
Content-Type: text/plain; charset="UTF-8"

Does the file you're reading from have enough data in it?

Wade


On Thu, Oct 13, 2022, 7:39 AM sp <stackprogramer@gmail.com> wrote:

> Why initialize large array in Verilog is not successfully. When size of
> array is 255 it work like charm but for other number more than 255 like
> 1024 and ....
> we observe all array is filled with zero? why large array in FPGA can not
> initailize correctly????
>
>
> Code:
>  reg signed  [15:0]  data_i_pattern_buffer [1024:0];
>  reg signed  [15:0]  data_q_pattern_buffer [1024:0];
>   $readmemh("out_i.txt",data_i_pattern_buffer,0,1024);
>  $readmemh("out_q.txt",data_q_pattern_buffer,0,1024);
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b4772105eb00cd4c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Does the file you&#39;re reading from have enough da=
ta in it?<div dir=3D"auto"><br></div><div dir=3D"auto">Wade</div><br><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
13, 2022, 7:39 AM sp &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackp=
rogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr">Why initialize large array in Verilog is not successfully. =
When size of array is 255 it work like charm but for other number more than=
 255 like 1024 and ....<br>we observe all array is filled with zero? why la=
rge array in FPGA can not initailize correctly????<div><br></div><div><br>C=
ode:<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_i_pattern_buffer [1024:0];=
<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_q_pattern_buffer [1024:0];<br>=
=C2=A0 $readmemh(&quot;out_i.txt&quot;,data_i_pattern_buffer,0,1024);<br>=
=C2=A0$readmemh(&quot;out_q.txt&quot;,data_q_pattern_buffer,0,1024);<br></d=
iv></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>

--000000000000b4772105eb00cd4c--

--===============8364709272640583303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8364709272640583303==--
