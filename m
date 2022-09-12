Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D65B5AE4
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 15:10:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D63AC3832CB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Sep 2022 09:10:05 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662988205; bh=k1vZantrjO+c7AUTnj27lF8Lc8CE/DEzhZg1NtevgIs=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=M47G2sH4OZwtecU+j/OMTehrLvTrsp8Ldxjh4WxiCNkuDXAqUsmmsBgvHPcmuOvMz
	 krpxIvlhYFSpMpMf11NNOlfjNND69VXn6YQCja4V9sXjynycOGc5VZPVbxX/L/x6oB
	 bfipdjHhL1NKwoA4Z34SVklMHAyTG3vj/926xZer6qaMtzUrbhOjSpK0jxiMr3D3uR
	 8nK5t3IBMc1znqaOV2fmvQlVnuJdlWHrSChk68T4KDwFSm3ukpqsrct5y2Ny20iwvl
	 WD2XyPFgcht5tkMTAhAmlMWxMs0ZJ7sD/RrRlAwFl/r2iGooXius4Nkf6wkRznvgr8
	 oACwKoXIQW4Lg==
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 73E673812DB
	for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 09:09:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eLDiH7zB";
	dkim-atps=neutral
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1225219ee46so23222736fac.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Sep 2022 06:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date;
        bh=swTY9ezjeV/r9WgsSy1oz6UMXVVAOteHkU8RyGkphJc=;
        b=eLDiH7zBCpzEAAtsJJRbvpk6IWZlvwMYZHTNRxpFWlPKrqPizguCzz7SenZg+GBbPc
         ojKgdi75VcSyvDwvsNWypTBMLIPn2zQZ5jOyYZCpHBzgk10UHxfDjw5SA4msEKJiN3r1
         P7O8IUc6qGSwQXCjyOysAcS2K0e68hSEOs64FO/QjRj7QUC+B+rU3hYVcaKXG6QrZWOO
         Z61isIiRyejji0gCxQ2C7eNGyXYJn7z4q7bIwFBkfA6fQCtA8rmaxOZsLOInTUoqd8Pp
         i5aEaiMJVa0lsxXiKN5HUk/9K0l+5TBWGalEtl0ifD3k62L+Fdf637Gg3wPggoMglUpl
         P+yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date;
        bh=swTY9ezjeV/r9WgsSy1oz6UMXVVAOteHkU8RyGkphJc=;
        b=6eezMzd4O+ouVfbuqi8SQ2sE3XnMCKpJYHbxeBZiWFSchBrVyv7gPu2zLbuE8THDiR
         EZ18Ba8IzHrqYgUh1f7X8aeYNft3LU/2t93JEZ7OQIRy558cu7q6GzWYGU60rFp5mN27
         82c51++DJPGpFQWFTx7Sm/CX7E/MjWw3XrPrfG5kQ+iL9dALnr1SJOovq7n+UAnr8tBN
         yUm/Irq5zLEeValedn3jO/Non5lj5IgBi7SOpA5Es0KPe0h+yWL/kqwEJ+XhkNn/ESuW
         Tocdp8fkEqizO33rV0leRIbA1GB6G7catH4IPPGpAJBSFy92xRfg+3rNXny8i1ACqkqd
         ByaA==
X-Gm-Message-State: ACgBeo0jJx72C0htb9xGuTpIDnedK3YdP2Q5wTH675KtdFQyW+vx/+6i
	Ya3m6org5wF25Pm1oWJTMSCR+ThIsVtYJDKVcYDwHXBXOSZq0w==
X-Google-Smtp-Source: AA6agR5SI4YxCyoqbaNeO7yw0OaeqtLSnm7D/tdtk8E6eDt0Cyl1Ohv8ryZg9ygo2EMAgz0/oXUe2hxqdy0qcciSYfA=
X-Received: by 2002:a05:6808:2382:b0:344:90f9:b79 with SMTP id
 bp2-20020a056808238200b0034490f90b79mr9093339oib.137.1662988155423; Mon, 12
 Sep 2022 06:09:15 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Williams <zs1kwa@gmail.com>
Date: Mon, 12 Sep 2022 15:08:39 +0200
Message-ID: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: T47IHK4D7E6GAJNTZTXZN7SMHD4PZ7TV
X-Message-ID-Hash: T47IHK4D7E6GAJNTZTXZN7SMHD4PZ7TV
X-MailFrom: zs1kwa@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] tracing an overflow error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T47IHK4D7E6GAJNTZTXZN7SMHD4PZ7TV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2600276465027220040=="

--===============2600276465027220040==
Content-Type: multipart/alternative; boundary="00000000000045109c05e87a9ad6"

--00000000000045109c05e87a9ad6
Content-Type: text/plain; charset="UTF-8"

Hi All,

I've got an IP core that is causing an "ERROR_CODE_OVERFLOW" when used in
an RFNoC project.

The core responds correctly when simulated outside the RFNoC environment.
(I can see correct output, the AXI streaming signalling, back-pressure when
required, etc.)

I'm not sure how to go about debugging this, and am not yet familiar enough
with RFNoC to know what to ask.

I have been thinking it was the core not being reset or clocked correctly,
but this is how it gets instantiated:

  multiddc multiddc_i (
    //   - Using different clocks for the IP core and the AXI interface.
The IPCore_Clk and AXILite_ACLK must be
    //     synchronous and connected to the same clock source. The
IPCore_RESETN and AXILite_ARESETN must be
    //     connected to the same reset source. See Synchronization of
Global Reset Signal to IP Core Clock Domain.
    .IPCORE_CLK                (axis_data_clk),
    .IPCORE_RESETN             (~axis_data_rst),

    .AXI4_Lite_ACLK            (axis_data_clk),
    .AXI4_Lite_ARESETN         (~axis_data_rst),

The core YAML file describes the clock as:

data:
  fpga_iface: axis_chdr
  clk_domain: ce

In the project YAML file:

clk_domains:
    - { srcblk: _device_, srcport: radio, dstblk: radio0,    dstport: radio
}
    - { srcblk: _device_, srcport: ce,    dstblk: multiddc0, dstport: ce }

Is there something that might be an obvious first place to check?

Many thanks, Kevin

-- 
Kevin Williams

--00000000000045109c05e87a9ad6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Hi All,<div><br></div><div>I&#39;ve got an IP core that is causin=
g an &quot;ERROR_CODE_OVERFLOW&quot; when used in an RFNoC project.</div><d=
iv><br></div><div>The core responds correctly when simulated outside the RF=
NoC environment. (I can see correct output, the AXI streaming signalling, b=
ack-pressure when required, etc.)</div><div><br></div><div>I&#39;m not sure=
 how to go about debugging this, and am not yet familiar enough with RFNoC =
to know what to ask.</div><div><br></div><div>I have been thinking it was t=
he core not being reset or clocked correctly, but this is how it gets insta=
ntiated:</div><div><br></div><div><div>=C2=A0 multiddc multiddc_i (</div><d=
iv>=C2=A0 =C2=A0 //=C2=A0 =C2=A0- Using different clocks for the IP core an=
d the AXI interface. The IPCore_Clk and AXILite_ACLK must be=C2=A0<br></div=
><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0synchronous and connected to the =
same clock source. The IPCore_RESETN and AXILite_ARESETN must be=C2=A0</div=
><div>=C2=A0 =C2=A0 //=C2=A0 =C2=A0 =C2=A0connected to the same reset sourc=
e. See Synchronization of Global Reset Signal to IP Core Clock Domain.</div=
><div>=C2=A0 =C2=A0 .IPCORE_CLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .IPCORE_RESETN=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div><div><br><=
/div><div>=C2=A0 =C2=A0 .AXI4_Lite_ACLK=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 (axis_data_clk),</div><div>=C2=A0 =C2=A0 .AXI4_Lite_ARESETN=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0(~axis_data_rst),</div></div><div><br></div><div=
>The core YAML file describes the clock as:</div><div><br></div><div><div>d=
ata:</div><div>=C2=A0 fpga_iface: axis_chdr</div><div>=C2=A0 clk_domain: ce=
</div></div><div><br></div><div>In the project YAML file:</div><div><br></d=
iv><div><div>clk_domains:</div><div>=C2=A0 =C2=A0 - { srcblk: _device_, src=
port: radio, dstblk: radio0,=C2=A0 =C2=A0 dstport: radio }</div><div>=C2=A0=
 =C2=A0 - { srcblk: _device_, srcport: ce,=C2=A0 =C2=A0 dstblk: multiddc0, =
dstport: ce }</div></div><div><br></div><div>Is there something that might =
be an obvious first place to check?</div><div><br></div><div>Many thanks, K=
evin<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail=
_signature">Kevin Williams</div></div></div></div></div></div></div>

--00000000000045109c05e87a9ad6--

--===============2600276465027220040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2600276465027220040==--
