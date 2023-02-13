Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 208C26949B1
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 16:01:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 17044384538
	for <lists+usrp-users@lfdr.de>; Mon, 13 Feb 2023 10:00:58 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676300458; bh=4E13ARzdjRSeFzFMee7D6zRVrKafPSiDBxuZukE5+p8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EY9SbCvqNHHTyEDG38sj9DQEWfXnVZeSJzHxRQyDwqya+4qQZCN9q0y1hgVINjcmS
	 c1FlJ19mBGbJCGns1N64yUb3pVHzKJkC0oVDQrNOcjeTtlAqKziwfhmnKbx8MeBIc3
	 TkgdiOeQtEdlcxOiAGvkTWt0P7cjMXjYYQLV6wy+j+OKjHRu8no/b9B9EddX+1rEdd
	 XHPZ04EojUfsZv6zvlKS80M2lr/0VI7RZE+GAY8ui54sdykHOuQ8U0QUAEWYGJRH5V
	 gzm87S/9KLWbAWjUrKP7Wo1l6H8zQCXb1F2COQcoZS4tJ4CfHrn5J4aJ49AdF32hbV
	 DbrIR+MtG1UGg==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id DEE313841A1
	for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 10:00:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="kcZCsMFl";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id qw12so32606697ejc.2
        for <usrp-users@lists.ettus.com>; Mon, 13 Feb 2023 07:00:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=80+zYnhKgCpAYq39mLly/oQb/lVDgKKh2Z7LpU73SOs=;
        b=kcZCsMFlgpl+27OVK703DAi75qWCqBrsBJgM0+QDkMOUPmp6Ap69VURLW5F/QYepHK
         t83BW5EULZZzLTzVG5fcaxrKf+i1ldZcS2AP4zhjG00LljJXinWr3BaNJpd/P6zr5GIj
         finK/rouY82V84Nbs7iWz/O4LBATwxzOtw3ZxYphq2YI2F3kyT1c6BvsL5d/hQYPQbt4
         5z4r53I+KQBRKCHpO+mAZREI7/U8dtjXxFzjynz4eGuV7yMYov9SOiXVtzglIbVzdSFe
         AzBM2zG031BCJ35NnVrTws/cg2BsrDLOv+KvY+E9Z3wPulnEf0eT8FVB+BDTWkmLz5KW
         r41Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=80+zYnhKgCpAYq39mLly/oQb/lVDgKKh2Z7LpU73SOs=;
        b=yww1XZ7A3HrvTjun6+XgoAMArBThzkdkCs2oa/uBm7UA+qyZeUkWwBrdtJld6a090a
         vlQxwKWF1OPTDBOqGtUIk9X72WzpyKLOlk2WaaIrMeBTB05bwRBlKB1DK+6PShY2yYaB
         iRZ55hFE73GSItUg51OV/egU51y6w4fWLnYbZfQinZZLDD3D6RbLjSgRlAWbtTet6NIx
         nto93Kup5GZHtsx0quudA8mx0g4U7fC6cROzerAm2g2SRuTy/SiZ2eIZOO9mB8Pb9qLA
         boRB1nM0figHDY1mNbufVJQMAil7VAJwTVPdSzz4TePRNpAm+3wsGJv9o1V4sKTMttK5
         09wg==
X-Gm-Message-State: AO0yUKWtxGxEAsXbGCxupllIaxupwooFRJPBmrEnW+rIN1YaY+ob6YV3
	zes64cRynpVRBjW74QJJ5k+5FQD3IWKAVJ0lCGFEsCRhP3jh29C3g7k=
X-Google-Smtp-Source: AK7set9D7YvVUpd39HHODRPB8AOztVbiTa3LSfRrvlx57V/HyfVyzBhWMx09WEdUzBmg5/TfGRqSLcV6g4eRJLu2s6Y=
X-Received: by 2002:a17:906:fad2:b0:878:1431:2d03 with SMTP id
 lu18-20020a170906fad200b0087814312d03mr4835854ejb.0.1676300411831; Mon, 13
 Feb 2023 07:00:11 -0800 (PST)
MIME-Version: 1.0
References: <I8jSerRKQ6cIlermBw6SpmFfli20pGxH4eufQMO3LY0@lists.ettus.com>
In-Reply-To: <I8jSerRKQ6cIlermBw6SpmFfli20pGxH4eufQMO3LY0@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 13 Feb 2023 08:59:55 -0600
Message-ID: <CAFche=grpqbFS=-5Or-kToJ5fgYt6a9m--xhuF5=mKS41yUYzA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: 4DEUMFKRC6D5W76LBJN64EDRNEZDGS65
X-Message-ID-Hash: 4DEUMFKRC6D5W76LBJN64EDRNEZDGS65
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Block controller hangs in testbench
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4DEUMFKRC6D5W76LBJN64EDRNEZDGS65/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8211138333621389957=="

--===============8211138333621389957==
Content-Type: multipart/alternative; boundary="000000000000959d1305f4961a43"

--000000000000959d1305f4961a43
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

You could try stepping through the testbench code in the simulator to see
where it's hanging, or look at your block's signals in the simulation to
see what it does with the write. Make sure it behaves the same as one of
the register writes in a working testbench.

Perhaps a reset signal is not deasserted or one of the clocks is not
toggling. It could be waiting for the acknowledgement from the write, but
not receiving one. Here's where the acknowledgement is made in the gain
example:

https://github.com/EttusResearch/uhd/blob/5fac246bc18ab04cb4870026a630e46d0=
fd87b17/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.=
v#L259

Wade

On Thu, Feb 9, 2023 at 2:10 PM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I am currently trying to figure out how to use the testbench. I am
> currently using rfnoc-gain and rfnoc-keep_one_in_n as reference.
>
>
> When I run my testbench, my code hangs on the line that write to the
> register of the block
>
> write_reg(port, dut.REG_MODE, mode);
>
> where write_reg is the following task=E2=80=A6
>
> // Translate the desired register access to a ctrlport write request.
>
> task automatic write_reg(input logic [$clog2(NUM_PORTS)-1:0] port, input
> ctrl_address_t addr, input logic [31:0] value);
>
> blk_ctrl.reg_write(256*8*port + addr*8, value);
>
> endtask : write_reg
>
> When I run the same line in the example =E2=80=9Crfnoc-keep-one-in-n=E2=
=80=9D It does not
> hang, so I am led to believe that I am missing something, but I don=E2=80=
=99t know
> where. I am wondering if anyone else has come across a similar issue.
>
> Thanks
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000959d1305f4961a43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Joe,</div><div><br></div><div>You could try steppi=
ng through the testbench code in the simulator to see where it&#39;s hangin=
g, or look at your block&#39;s signals in the simulation to see what it doe=
s with the write. Make sure it behaves the same as one of the register writ=
es in a working testbench.<br></div><div><br></div><div>
Perhaps a reset signal is not deasserted or one of the clocks is not toggli=
ng. It could be waiting for the acknowledgement from the write, but not rec=
eiving one. Here&#39;s where the acknowledgement is made in the gain exampl=
e:</div><div><br></div><div><a href=3D"https://github.com/EttusResearch/uhd=
/blob/5fac246bc18ab04cb4870026a630e46d0fd87b17/host/examples/rfnoc-example/=
fpga/rfnoc_block_gain/rfnoc_block_gain.v#L259">https://github.com/EttusRese=
arch/uhd/blob/5fac246bc18ab04cb4870026a630e46d0fd87b17/host/examples/rfnoc-=
example/fpga/rfnoc_block_gain/rfnoc_block_gain.v#L259</a></div><div></div><=
div><br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 9, 2023 at 2:10 PM &lt;<a href=
=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p><br></p><p=
>I am currently trying to figure out how to use the testbench. I am current=
ly using rfnoc-gain and rfnoc-keep_one_in_n as reference.</p><p><br></p><p>=
When I run my testbench, my code hangs on the line that write to the regist=
er of the block</p><p><code>write_reg(port, dut.REG_MODE, mode);</code></p>=
<p>where write_reg is the following task=E2=80=A6</p><p><code>// Translate =
the desired register access to a ctrlport write request.</code></p><p><code=
>  task automatic write_reg(input logic [$clog2(NUM_PORTS)-1:0] port, input=
 ctrl_address_t addr, input logic [31:0] value);</code></p><p><code> blk_ct=
rl.reg_write(256*8*port + addr*8, value);</code></p><p><code>  endtask : wr=
ite_reg</code></p><p>When I run the same line in the example =E2=80=9Crfnoc=
-keep-one-in-n=E2=80=9D It does not hang, so I am led to believe that I am =
missing something, but I don=E2=80=99t know where. I am wondering if anyone=
 else has come across a similar issue.</p><p>Thanks</p><p>Joe</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000959d1305f4961a43--

--===============8211138333621389957==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8211138333621389957==--
