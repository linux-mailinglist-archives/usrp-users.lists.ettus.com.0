Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE8036E0F0
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 23:30:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E69CE38441C
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:30:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FAOwQXUl";
	dkim-atps=neutral
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 86703383E1C
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 17:29:45 -0400 (EDT)
Received: by mail-oo1-f44.google.com with SMTP id k26-20020a4adfba0000b02901f992c7ec7bso761834ook.13
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 14:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/miwAfB2MV7qcu5KwR/xBWfCPyCNH5cLFN3VOkOnehE=;
        b=FAOwQXUl91O1VM9cOPDlSIN2DwYWpafw66+pQTKrq1jBPrxK7acPXK8ZkJuJwoauSe
         Hp7/dwkKj6js6p+bFvrXMt51bh/Z2eIK9vC7yGIjxjgoGFktsuBz6g1xGzhHPuyI+FY1
         FVays4FNLNn+SaNYU4ugzXto1P4ZWmmdR/QZ47qG9hnDIfVlnkJXnA63iVkPW9wbgWdI
         buPZwSLhXTO5+xhGp0X4u4KeEdFFwoIrSfzC8ZO0dK/+nFRuMSvbo0YM9rthmVlwiZNC
         XYMUwg1PdNwJYGIcRsHCmndutwcJSAVQRlQbAMO2ihZs8g9q7dazTQHj9LiRRj7w5JiI
         /j5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/miwAfB2MV7qcu5KwR/xBWfCPyCNH5cLFN3VOkOnehE=;
        b=hR6UZlW1VKMNHjZtdKIv/GtCJYXIRs0jSsbr6cbW0q3i15TwhXbR4m+9IflKC5CqiI
         fgckn4y24sn6hqkyCkZt7G+9L34xT2IcW31Od0sIurP4jmAReGe3MIdar9ySj5Hc9mvc
         qLkCxRE/Oq1CXlomhyRbhls3AhKHu24QBHhBCwPSq47Nu7JG3MEcbDr/Q0O0+oaRMaHM
         +z2tchM8WwY/AIU3mD4toCouM69XHs0o70tz+eZ2xE4OvRZEr6o3RTzRc+Hpmnh325WB
         jNEoZSti4E7vn37A0BjrfUJvTQHKd1KYRB3ut6nuAfEf7fRuxh/KTaAUOTvM0I0dO+GI
         SByQ==
X-Gm-Message-State: AOAM5328UPEBgkMQli/qxOIRy2g8+VK9eM457DSPUdVES4hacC5/vVhJ
	mrLJUaCXDqiS+S3g/sJykWsLpnwQYZnjJezjOTA=
X-Google-Smtp-Source: ABdhPJwlwrg8DCp3DSH+ZyHvwATpp8k/F/b5IeIo7uPFrmXQGay2zePa8JWF7fMZLwSXSWGUBmQPUT32X7G8gWRwxGU=
X-Received: by 2002:a4a:620a:: with SMTP id x10mr24307916ooc.80.1619645384833;
 Wed, 28 Apr 2021 14:29:44 -0700 (PDT)
MIME-Version: 1.0
References: <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
In-Reply-To: <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 28 Apr 2021 17:29:32 -0400
Message-ID: <CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com>
To: Eugene Grayver <eugene.grayver@aero.org>
Message-ID-Hash: JEP4XXLOBQIPKHUD6Q22B4GR3IWREGZG
X-Message-ID-Hash: JEP4XXLOBQIPKHUD6Q22B4GR3IWREGZG
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bare metal development on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JEP4XXLOBQIPKHUD6Q22B4GR3IWREGZG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4012147141924404161=="

--===============4012147141924404161==
Content-Type: multipart/alternative; boundary="000000000000d33d1e05c10f13ee"

--000000000000d33d1e05c10f13ee
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 28, 2021 at 5:11 PM Eugene Grayver <eugene.grayver@aero.org>
wrote:

> Hello,
>
> I am planning to use an X310 (we have at least 50 of them around =F0=9F=
=99=82 ) for
> an all-hdl project.  Has anyone used it w/out RFNoC or UHD?  How much set=
up
> for on-board components is there?  Can I do it w/out the software running
> on a PC?
>

That's pretty ambitious.

From what I've seen, all the PLL programming, RF switches, and general
setup/housekeeping is done in UHD with very little help by way of a soft
CPU in the FPGA.

I am not sure what your timeline is, but you'd be redoing a lot of
engineering effort just to get to a new baseline.  You might want to
consider a small/cheap SBC with gigabit ethernet that runs linux/UHD and
does the housekeeping, and you create your "all-hdl" project as a single
RFNoC block.  The other RFNoC block you have in there would be the Radio
block itself - so the RFNoC infrastructure overhead would be minimized,
theoretically.

Do you think this is a possibility, or are you really steadfast on really
doing an all-hdl project?

Brian

--000000000000d33d1e05c10f13ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Apr 28, 2021 at 5:11 PM Eugene Gr=
ayver &lt;<a href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.or=
g</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
I am planning to use an X310 (we have at least 50 of them around <span id=
=3D"gmail-m_-4781002844512043234=F0=9F=99=82">=F0=9F=99=82 ) for an all-hdl=
 project.=C2=A0 Has anyone used it w/out RFNoC or UHD?=C2=A0 How much setup=
 for on-board components is there?=C2=A0 Can I do it w/out the software run=
ning on a PC?</span></div></div></blockquote><div><br></div><div>That&#39;s=
 pretty=C2=A0ambitious.</div><div><br></div><div>From what I&#39;ve seen, a=
ll the PLL programming, RF switches, and general setup/housekeeping is done=
 in UHD with very little help by way of a soft CPU in the FPGA.</div><div><=
br></div><div>I am not sure what your timeline is, but you&#39;d be redoing=
 a lot of engineering effort just to get to a new baseline.=C2=A0 You might=
 want to consider a small/cheap SBC with gigabit ethernet that runs linux/U=
HD and does the housekeeping, and you create your &quot;all-hdl&quot; proje=
ct as a single RFNoC block.=C2=A0 The other RFNoC block you have in there w=
ould be the Radio block itself - so the RFNoC infrastructure overhead would=
 be minimized, theoretically.</div><div><br></div><div>Do you think this is=
 a possibility, or are you really steadfast on really doing an all-hdl proj=
ect?</div><div><br></div><div>Brian</div></div></div>

--000000000000d33d1e05c10f13ee--

--===============4012147141924404161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4012147141924404161==--
