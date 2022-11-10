Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBE9624633
	for <lists+usrp-users@lfdr.de>; Thu, 10 Nov 2022 16:42:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 31BE5383CD2
	for <lists+usrp-users@lfdr.de>; Thu, 10 Nov 2022 10:42:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1668094960; bh=pSCAFkNqgM7JA4HAuDI2593iFgNErOk9fG9/V0DgrM8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=L2oIitM40/5Y11YmntvOyOHbR3tWvesmmZVD7OCmHjfGmXW7oHdcl3rZLpEafKpJb
	 weJgbuXFMJ02udUQbwveSZt/X/u83nxIr+pe1fZeMq0SHm2VfhtgTUMUamSwUAlTHu
	 qfuufuZ7np4/e6r4Ll51tdKNr5EKPnKzb2zWWhRU07OKT3XmP1za0f2cONdwuy1yZB
	 jydaNEPOQATKFJJWfDlu8OjwWQ7jUzJPU5vlh+THgKOlo6J5tb57qBUE/oLqGYAOLV
	 Ve4knvah+T+QFbLhZmI2UZWKuydY3uEiU8kv9MEmrygn1weBSRSHgxWUuduUR+aD73
	 vSYu1/ToAOPIA==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id AE7973817DA
	for <usrp-users@lists.ettus.com>; Thu, 10 Nov 2022 10:12:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="EbrYf4wa";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id i21so3522338edj.10
        for <usrp-users@lists.ettus.com>; Thu, 10 Nov 2022 07:12:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zejRwVZ/8PcKLtYit+gjhsQ3LPchZzMmHNu5Aurwp4Y=;
        b=EbrYf4waB035nvBsWfxzwE/5gw+oBUtrjML+wWvGfWz0PlWkdLCHFPwa2eZ/htSV2P
         wJpmXdt0FskipKNFtzjxT6f50b7ZGrNP6ryGtlKzddnmao4hDC9VYijAzpuzJty8mSjz
         Rom1Bd414ypZa1Dwx70UxDC970UYKrWqx+qUtv30RIOm4BGhKyCW4t2NHkxwX9Qeb4MG
         +l8jZWMWo32V/exyOz7TaRLPbroBdP5zbGeQAgkwjDyKKMWeOZYDN9q6oPZLCzBkaHbC
         FO3EmphoZoa8jHtOz7KhvgNz58HjH+6yAlK/bjmuLIv7P8goffYpyZcwY/UZT3HdwR+g
         yWiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zejRwVZ/8PcKLtYit+gjhsQ3LPchZzMmHNu5Aurwp4Y=;
        b=u6zJ5uhLpfmKJaY/TrBzDPfjEc1xxJAz6NwZn32QoANhDKSU9N0192JRHUxu1YKg8/
         Qdm4PqtTvj7a60QEnb9fCW62AFO72HGJTDraflLfTygL3DkOPZ2nb1+Mk9NAzTITHV8F
         LZc8r89syUeB+EhhGJ142xLNPC7bWJqCtO5GCdGVrps+VWGCVfos0BcOTDq4nLOP+3P4
         gFz1p5d39GNeJg1PM276v9/d4katdYwJzvVITug6mxmDF0yDX0Mxxn8eMutzlHeSTPX7
         yxJwJcBlb+eSMVZqh3g1eyKEXquCQg532JtQSTijWl+KWw31VXHD0BpG+gCTJsIUrnBf
         8tzA==
X-Gm-Message-State: ACrzQf0AMl89sdYr8tCY5CuDd3dU5sPChRjd+jwQQb3iVk+lMplmV0JP
	cnz6snMjLbPCiB0rPljt3FQenvyit5AJBRGI4QLe8l6TI5g=
X-Google-Smtp-Source: AMsMyM7/Olg5z3MSNbHz0cG4tqEErgN3s46m0LXc0U4RvjLV3OZ38lTEWV0zefvW/SzzMl0G0Q+NaPxo6zbcIVLKkcI=
X-Received: by 2002:a05:6402:cad:b0:459:7673:6f33 with SMTP id
 cn13-20020a0564020cad00b0045976736f33mr2458182edb.30.1668093130230; Thu, 10
 Nov 2022 07:12:10 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3Pu5s5MN=595OnmZ52To73cde5eA5nKK0GFvYAQxAg72kw@mail.gmail.com>
 <CAA=S3PtURr5Mjp73MJckJu_SA20bTSuvKfLAUgrs3dYVKYDFaQ@mail.gmail.com>
In-Reply-To: <CAA=S3PtURr5Mjp73MJckJu_SA20bTSuvKfLAUgrs3dYVKYDFaQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 10 Nov 2022 10:11:59 -0500
Message-ID: <CAB__hTTnA7_UDU2WPUv+fex5ERupW9q9HjZq7sMUtcdhm9z43Q@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: TYKJNFITO4B76AAQTDLVDD4SIC5NA3NG
X-Message-ID-Hash: TYKJNFITO4B76AAQTDLVDD4SIC5NA3NG
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why when I changed inputs of RFNOC blocks it is not changed in file x300_rfnoc_image_core.v
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TYKJNFITO4B76AAQTDLVDD4SIC5NA3NG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5728997106417818549=="

--===============5728997106417818549==
Content-Type: multipart/alternative; boundary="0000000000007b92dc05ed1f322f"

--0000000000007b92dc05ed1f322f
Content-Type: text/plain; charset="UTF-8"

It seems that you customized the gain example by adding NUM_PORTS - is this
correct?  If so, I think that this modification  can also be done another
way. If you add NUM_PORTS to the block yaml file in the same way it is
added for other blocks and generate the code from that, I think that all of
the files including the image core can be generated consistently without
the need for manual modifications.
Rob

On Thu, Nov 10, 2022 at 3:11 AM sp <stackprogramer@gmail.com> wrote:

> Hi, My problem is solved.  By adding the option -n I force
> rfnoc_image_builder to use that image core that I define it.
>
> rfnoc_image_builder    -n
>  /home/sp/rfnoc-test/rfnoc/icores/x300_rfnoc_image_core2.v
>
> On Thu, Nov 10, 2022 at 6:01 AM sp <stackprogramer@gmail.com> wrote:
>
>> I used an RFNOC gain example file when I want to change the input of the
>> gain block as below.......
>>
>>
>> module rfnoc_block_gain #(
>>   parameter [9:0] THIS_PORTID     = 10'd0,
>>   parameter       CHDR_W          = 64,
>>   parameter [5:0] MTU             = 10,
>>   parameter       NUM_PORTS       = 1
>> )(
>>   // RFNoC Framework Clocks and Resets
>>   input  wire                   rfnoc_chdr_clk,
>>   input  wire                   rfnoc_ctrl_clk,
>>   input  wire                   ce_clk,
>>   //Add shared reg
>>   input wire [31:0]  s_impedance,
>>   output wire [31:0] s_threshold,
>>
>>   // RFNoC Backend Interface
>>   input  wire [511:0]           rfnoc_core_config,
>>   output wire [511:0]           rfnoc_core_status,
>>   // AXIS-CHDR Input Ports (from framework)
>>   input  wire [(0+NUM_PORTS)*CHDR_W-1:0] s_rfnoc_chdr_tdata,
>>   input  wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tlast,
>>   input  wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tvalid,
>>   output wire [(0+NUM_PORTS)-1:0]        s_rfnoc_chdr_tready,
>>   // AXIS-CHDR Output Ports (to framework)
>>   output wire [(0+NUM_PORTS)*CHDR_W-1:0] m_rfnoc_chdr_tdata,
>>   output wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tlast,
>>   output wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tvalid,
>>   input  wire [(0+NUM_PORTS)-1:0]        m_rfnoc_chdr_tready,
>>   // AXIS-Ctrl Input Port (from framework)
>>   input  wire [31:0]            s_rfnoc_ctrl_tdata,
>>   input  wire                   s_rfnoc_ctrl_tlast,
>>   input  wire                   s_rfnoc_ctrl_tvalid,
>>   output wire                   s_rfnoc_ctrl_tready,
>>   // AXIS-Ctrl Output Port (to framework)
>>   output wire [31:0]            m_rfnoc_ctrl_tdata,
>>   output wire                   m_rfnoc_ctrl_tlast,
>>   output wire                   m_rfnoc_ctrl_tvalid,
>>   input  wire                   m_rfnoc_ctrl_tready
>> );
>>
>> I can not see any change in RFNOC image core
>> ( x300_rfnoc_image_core.v).In this file, you can see the gain definition
>> section...
>>
>> //-----------------------------------
>> // gain0
>> //-----------------------------------
>>
>> wire gain0_ce_clk;
>> wire [CHDR_W-1:0] s_gain0_in_0_tdata ;
>> wire s_gain0_in_0_tlast ;
>> wire s_gain0_in_0_tvalid;
>> wire s_gain0_in_0_tready;
>> wire [CHDR_W-1:0] m_gain0_out_0_tdata ;
>> wire m_gain0_out_0_tlast ;
>> wire m_gain0_out_0_tvalid;
>> wire m_gain0_out_0_tready;
>>
>> rfnoc_block_gain #(
>> .THIS_PORTID (9),
>> .CHDR_W (CHDR_W),
>> .NUM_PORTS (1),
>> .MTU (MTU)
>> ) b_gain0_7 (
>> .rfnoc_chdr_clk (rfnoc_chdr_clk),
>> .rfnoc_ctrl_clk (rfnoc_ctrl_clk),
>> .ce_clk (gain0_ce_clk),
>> .rfnoc_core_config (rfnoc_core_config[512*8-1:512*7]),
>> .rfnoc_core_status (rfnoc_core_status[512*8-1:512*7]),
>> .s_rfnoc_chdr_tdata ({s_gain0_in_0_tdata }),
>> .s_rfnoc_chdr_tlast ({s_gain0_in_0_tlast }),
>> .s_rfnoc_chdr_tvalid ({s_gain0_in_0_tvalid}),
>> .s_rfnoc_chdr_tready ({s_gain0_in_0_tready}),
>> .m_rfnoc_chdr_tdata ({m_gain0_out_0_tdata }),
>> .m_rfnoc_chdr_tlast ({m_gain0_out_0_tlast }),
>> .m_rfnoc_chdr_tvalid ({m_gain0_out_0_tvalid}),
>> .m_rfnoc_chdr_tready ({m_gain0_out_0_tready}),
>> .s_rfnoc_ctrl_tdata (s_gain0_ctrl_tdata),
>> .s_rfnoc_ctrl_tlast (s_gain0_ctrl_tlast),
>> .s_rfnoc_ctrl_tvalid (s_gain0_ctrl_tvalid),
>> .s_rfnoc_ctrl_tready (s_gain0_ctrl_tready),
>> .m_rfnoc_ctrl_tdata (m_gain0_ctrl_tdata),
>> .m_rfnoc_ctrl_tlast (m_gain0_ctrl_tlast),
>> .m_rfnoc_ctrl_tvalid (m_gain0_ctrl_tvalid),
>> .m_rfnoc_ctrl_tready (m_gain0_ctrl_tready)
>> );
>>
>>
>> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007b92dc05ed1f322f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It seems that you customized the gain example by adding NU=
M_PORTS - is this correct?=C2=A0 If so, I think that this modification=C2=
=A0 can also be done another way. If you add NUM_PORTS to the block yaml fi=
le in the same way it is added for other blocks and generate the code from =
that, I think that all of the files including the image core can be generat=
ed consistently without the need for manual modifications.<div>Rob</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Nov 10, 2022 at 3:11 AM sp &lt;<a href=3D"mailto:stackprogramer@gmail.=
com">stackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div dir=3D"ltr">Hi, My problem is solved.=C2=
=A0 By adding the option -n I force rfnoc_image_builder to use that image c=
ore that I define it.<div><div><br></div><div>rfnoc_image_builder=C2=A0 =C2=
=A0 -n =C2=A0/home/sp/rfnoc-test/rfnoc/icores/x300_rfnoc_image_core2.v<br><=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, Nov 10, 2022 at 6:01 AM sp &lt;<a href=3D"mailto:stackpr=
ogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">I used an RFNOC gain example file when I want to change the input of the=
 gain block as below.......<div><br><br>module rfnoc_block_gain #(<br>=C2=
=A0 parameter [9:0] THIS_PORTID =C2=A0 =C2=A0 =3D 10&#39;d0,<br>=C2=A0 para=
meter =C2=A0 =C2=A0 =C2=A0 CHDR_W =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D 64,=
<br>=C2=A0 parameter [5:0] MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=3D 10,<br>=C2=A0 parameter =C2=A0 =C2=A0 =C2=A0 NUM_PORTS =C2=A0 =C2=A0 =
=C2=A0 =3D 1<br>)(<br>=C2=A0 // RFNoC Framework Clocks and Resets<br>=C2=A0=
 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rfnoc_chdr_clk,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rfnoc_ctrl_clk,<br>=C2=A0 input =C2=
=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ce_c=
lk,<br>=C2=A0 //Add shared reg<br>=C2=A0 input wire [31:0] =C2=A0s_impedanc=
e,<br>=C2=A0 output wire [31:0] s_threshold,<br><br>=C2=A0 // RFNoC Backend=
 Interface<br>=C2=A0 input =C2=A0wire [511:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rfnoc_core_config,<br>=C2=A0 output wire [511:0] =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 rfnoc_core_status,<br>=C2=A0 // AXIS-CHDR Input Ports (fr=
om framework)<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)*CHDR_W-1:0] s_rfnoc=
_chdr_tdata,<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =
=C2=A0 =C2=A0s_rfnoc_chdr_tlast,<br>=C2=A0 input =C2=A0wire [(0+NUM_PORTS)-=
1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr_tvalid,<br>=C2=A0 output wire =
[(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_chdr_tready,<br>=C2=
=A0 // AXIS-CHDR Output Ports (to framework)<br>=C2=A0 output wire [(0+NUM_=
PORTS)*CHDR_W-1:0] m_rfnoc_chdr_tdata,<br>=C2=A0 output wire [(0+NUM_PORTS)=
-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_chdr_tlast,<br>=C2=A0 output wire =
[(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc_chdr_tvalid,<br>=C2=
=A0 input =C2=A0wire [(0+NUM_PORTS)-1:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0m_rfnoc=
_chdr_tready,<br>=C2=A0 // AXIS-Ctrl Input Port (from framework)<br>=C2=A0 =
input =C2=A0wire [31:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0s_rfnoc_ct=
rl_tdata,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tlast,<br>=C2=A0 input =C2=A0wire =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tv=
alid,<br>=C2=A0 output wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 s_rfnoc_ctrl_tready,<br>=C2=A0 // AXIS-Ctrl Output Port (=
to framework)<br>=C2=A0 output wire [31:0] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0m_rfnoc_ctrl_tdata,<br>=C2=A0 output wire =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl_tlast,<br>=C2=A0 out=
put wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_r=
fnoc_ctrl_tvalid,<br>=C2=A0 input =C2=A0wire =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 m_rfnoc_ctrl_tready<br>);<br><div><br></=
div><div>I can not see any change in RFNOC image core (=C2=A0x300_rfnoc_ima=
ge_core.v).In this file, you can see the gain definition section...</div><d=
iv><br></div><div><div style=3D"color:rgb(0,0,0);font-family:&quot;Droid Sa=
ns Mono&quot;,&quot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quo=
t;;font-size:14px;line-height:19px;white-space:pre-wrap"><div><span style=
=3D"color:rgb(0,128,0)">//-----------------------------------</span></div><=
div>  <span style=3D"color:rgb(0,128,0)">// gain0</span></div><div>  <span =
style=3D"color:rgb(0,128,0)">//-----------------------------------</span></=
div><br><div>  <span style=3D"color:rgb(0,0,255)">wire</span>              =
gain0_ce_clk;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span> [C=
HDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb=
(9,134,88)">0</span>] s_gain0_in_0_tdata ;</div><div>  <span style=3D"color=
:rgb(0,0,255)">wire</span>              s_gain0_in_0_tlast ;</div><div>  <s=
pan style=3D"color:rgb(0,0,255)">wire</span>              s_gain0_in_0_tval=
id;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>             =
 s_gain0_in_0_tready;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</=
span> [CHDR_W-<span style=3D"color:rgb(9,134,88)">1</span>:<span style=3D"c=
olor:rgb(9,134,88)">0</span>] m_gain0_out_0_tdata ;</div><div>  <span style=
=3D"color:rgb(0,0,255)">wire</span>              m_gain0_out_0_tlast ;</div=
><div>  <span style=3D"color:rgb(0,0,255)">wire</span>              m_gain0=
_out_0_tvalid;</div><div>  <span style=3D"color:rgb(0,0,255)">wire</span>  =
            m_gain0_out_0_tready;</div><br><div>  <span style=3D"color:rgb(=
128,0,0)">rfnoc_block_gain</span> #(</div><div>    .THIS_PORTID         (<s=
pan style=3D"color:rgb(9,134,88)">9</span>),</div><div>    .CHDR_W         =
     (CHDR_W),</div><div>    .NUM_PORTS           (<span style=3D"color:rgb=
(9,134,88)">1</span>),</div><div>    .MTU                 (MTU)</div><div> =
 ) <span style=3D"color:rgb(128,0,0)">b_gain0_7</span> (</div><div>    .rfn=
oc_chdr_clk      (rfnoc_chdr_clk),</div><div>    .rfnoc_ctrl_clk      (rfno=
c_ctrl_clk),</div><div>    .ce_clk              (gain0_ce_clk),</div><div> =
   .rfnoc_core_config   (rfnoc_core_config[<span style=3D"color:rgb(9,134,8=
8)">512</span>*<span style=3D"color:rgb(9,134,88)">8</span>-<span style=3D"=
color:rgb(9,134,88)">1</span>:<span style=3D"color:rgb(9,134,88)">512</span=
>*<span style=3D"color:rgb(9,134,88)">7</span>]),</div><div>    .rfnoc_core=
_status   (rfnoc_core_status[<span style=3D"color:rgb(9,134,88)">512</span>=
*<span style=3D"color:rgb(9,134,88)">8</span>-<span style=3D"color:rgb(9,13=
4,88)">1</span>:<span style=3D"color:rgb(9,134,88)">512</span>*<span style=
=3D"color:rgb(9,134,88)">7</span>]),</div><div>    .s_rfnoc_chdr_tdata  ({s=
_gain0_in_0_tdata }),</div><div>    .s_rfnoc_chdr_tlast  ({s_gain0_in_0_tla=
st }),</div><div>    .s_rfnoc_chdr_tvalid ({s_gain0_in_0_tvalid}),</div><di=
v>    .s_rfnoc_chdr_tready ({s_gain0_in_0_tready}),</div><div>    .m_rfnoc_=
chdr_tdata  ({m_gain0_out_0_tdata }),</div><div>    .m_rfnoc_chdr_tlast  ({=
m_gain0_out_0_tlast }),</div><div>    .m_rfnoc_chdr_tvalid ({m_gain0_out_0_=
tvalid}),</div><div>    .m_rfnoc_chdr_tready ({m_gain0_out_0_tready}),</div=
><div>    .s_rfnoc_ctrl_tdata  (s_gain0_ctrl_tdata),</div><div>    .s_rfnoc=
_ctrl_tlast  (s_gain0_ctrl_tlast),</div><div>    .s_rfnoc_ctrl_tvalid (s_ga=
in0_ctrl_tvalid),</div><div>    .s_rfnoc_ctrl_tready (s_gain0_ctrl_tready),=
</div><div>    .m_rfnoc_ctrl_tdata  (m_gain0_ctrl_tdata),</div><div>    .m_=
rfnoc_ctrl_tlast  (m_gain0_ctrl_tlast),</div><div>    .m_rfnoc_ctrl_tvalid =
(m_gain0_ctrl_tvalid),</div><div>    .m_rfnoc_ctrl_tready (m_gain0_ctrl_tre=
ady)</div><div>  );</div><br></div></div><div><br></div></div></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007b92dc05ed1f322f--

--===============5728997106417818549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5728997106417818549==--
