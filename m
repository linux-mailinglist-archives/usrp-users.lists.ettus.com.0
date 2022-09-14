Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3845B8FAD
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 22:33:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D46D383BD0
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 16:33:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663187606; bh=Py1ISAjWQv7loEqp/MwfZS2RbAMUYT4lkmvdgOnVcJI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=o9YCxYo5TqABr2xuMoaTVyIFDr4ZBiRhmvcnioZ4TlF8024PRbkSLCJj901D/CVeb
	 EggA925jt7IdCzTwv6kaeT2YG1mXxZcrRh+wBTWVn19wF5qjjtHW9pmAbJLRSm76kQ
	 3MoLgCtkYAs4266yWKJ7f9AVGDB+Eebpgh3W5fcyCvaM2B/dcWVUjy7WlYjORbiCaM
	 qlL8aG+1oUa8bCxppCX54/9zando4+8KE8C2uDgf+WIacXSRgi6XyGsou6zJJyuqMP
	 Q2HCCzsti1LivrOQdXwpLQ1OQCy+TTLqex05Uo2lldEW/z1hhKLwQaka5bZ1d46GNZ
	 +EU15cpv/P5Ag==
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	by mm2.emwd.com (Postfix) with ESMTPS id C127C380A0C
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 16:32:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="nSGVwjv5";
	dkim-atps=neutral
Received: by mail-vs1-f44.google.com with SMTP id 129so17149163vsi.10
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 13:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=juxl1IwOX5OBVF73n5rO4YTRdIWlnOT7OvQv2uaZe9A=;
        b=nSGVwjv54f2GZwXn4Ijo1bQ4ocH5WZW/dTRpQtQjIAv6K6mK2NIupoEDpmht6J9DMM
         yDI6DKRLR0u7SGAkxQVZ7VMVwOKFKpmgXPadMUlMtbD7cWauzTY9s2y6ycY9xcCxZ0Jy
         QLjjuRXB2qHZ5jqLwt4+0HwmfrYBxnAZZAfrEfQTTTtFzESSTT/sLF0cG7kEMMX+ToLF
         0nNxZk8yxMnUzv1exnP+eoZYssJF5s3XuEs8Pcp4VKFzMRmAnMS5bv3bGxO7O4NliflY
         ZA5Vu98QSHoAGasC/phgCGO13f3W0zflCuudP35ME8t8aMG1XAgRk1SnVwPeT1ZL8caN
         5wXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=juxl1IwOX5OBVF73n5rO4YTRdIWlnOT7OvQv2uaZe9A=;
        b=iy59OS91EJGJlnL0kA+SCjKO4x4gYWPW/6WSr/WSnb8h+wa2i3Zk/tR0dwH6S6xAjU
         oRU2nGuX+gg9lsMfYqYi1qU7YlMA61TAexwWv9+qW+vvmlWDlLZGNCZF3GtFX3sHjJx8
         jOsq5JdUzVNKmNqe6337i4p7hQIWE4Isy38Zcn/jQJSUZ9FY8PNEGxf7ahBp7W6WHR7L
         jQC647eV3csZ4qpQ9bs+3kVU5OO3KG0dlMJjL9KukaTsXUKU/p9wwA5xuM1ErDkq+9wR
         AadtMwui7KMJWI03Pb4/1vgqHxoXo0A8OLdFT2iTkiJl3veayq+lsqa+g0oKUk+mINYA
         GKFw==
X-Gm-Message-State: ACgBeo1Y/1FSCiXz0LH3jpJ49fc98jRJ+RV7nr1DeOKrco3JeEZSH00/
	e9Qz1lXUXm0LIRXC8R/MwAGBDT51L27bnrkBdFWCt5N51mIKX8AN
X-Google-Smtp-Source: AA6agR6r5D9GTcY+Tne/QoL6UxkC6pabxV7WgVNlraucqb2WX0b0QA8kJp3q0R9Tn/SI+TxZoGx7SgIE1YeawO/xbdk=
X-Received: by 2002:a67:dc09:0:b0:398:5e76:acd2 with SMTP id
 x9-20020a67dc09000000b003985e76acd2mr7808028vsj.49.1663187523224; Wed, 14 Sep
 2022 13:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAJhOL6cAL19bq0dk+sToy-ADUaZNomCWU+sdgL46meCu94P3Xw@mail.gmail.com>
 <CAL7q81tqggKk4-MdGTsuQzGiLa2HThLdG99NQNynV863UAY4Gg@mail.gmail.com>
 <CAJhOL6cdPSjjTq4ryt=59Moq=t2SJxK7Eqd-_kNC+wJuV40asA@mail.gmail.com>
 <CAL7q81vU-WgEmrF0z8P-kQq3TJa=WSCtUwf-ftd1+a30EPZSdQ@mail.gmail.com>
 <CAJhOL6e7FFTrvXmUZmcmRjzFeHfo3_OTVR0_=hb7T5Tgtb4dqQ@mail.gmail.com>
 <CAL7q81s9KwfTnerWYdOt1fDrG9FDPv5qF743TYqBBSqG1LCNnA@mail.gmail.com>
 <CAJhOL6cTzeJRP8EFS_HjQR2VZP84w+6j8RiRPMczuniQUwcO3w@mail.gmail.com>
 <CAB__hTSe5M-BL4FFaAi=gA3O4AV=jxgBRbENpxGdnHe340ZptA@mail.gmail.com>
 <CAB__hTTsg9LsRScFUmYOywBp9eSg7iYixjLZULa119B+fnO2WQ@mail.gmail.com>
 <CAB__hTQp1SOfvNa6E=qZaV6ORqVHU5MJFTv_vzU0KXZ5Gy9Eww@mail.gmail.com>
 <CAJhOL6etMLth3S6pj-ghemXv18PXz-M0nS=S3Sg0Z3-i6Pq4Yg@mail.gmail.com>
 <CAB__hTQ8Ln5ktvkmx1ThQVQVX1mga0qCX=49YbXJtasG7emYjw@mail.gmail.com>
 <CAJhOL6dLdSL2bWPjdgcfnXL+ednwRQ1QX9tRG3mxgm3+O=486Q@mail.gmail.com>
 <CAJhOL6dUL3S-CJJHLOJTkaj86V-4axM8Ah=4_aKvAcB6WHEHyg@mail.gmail.com>
 <CAEXYVK6MeWsG3CF0LXYaOE0w5RGzAiksG1j-54kNOWYg2ZOfDg@mail.gmail.com>
 <28515f65-c0e2-4489-8563-1887cfac4265@Spark> <CAEXYVK4_xW0rgOKS1vz7R=iZkh_mg4qADnPF0uLALBhxGd71Ng@mail.gmail.com>
 <CAB__hTQ=00nz9Zyh+yfkG_V=h1yzfEDT4Rc+8=d5fxbD-sTrQw@mail.gmail.com>
In-Reply-To: <CAB__hTQ=00nz9Zyh+yfkG_V=h1yzfEDT4Rc+8=d5fxbD-sTrQw@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 14 Sep 2022 16:31:27 -0400
Message-ID: <CAL7q81u+G+W-wA18xUhFGUsQAigCWbn7MYCXvdPv7BxssYGVaA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: CI72TV5PVKPAEUEFXV672GYRBYKNGYCQ
X-Message-ID-Hash: CI72TV5PVKPAEUEFXV672GYRBYKNGYCQ
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Kevin Williams <zs1kwa@gmail.com>, "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tracing an overflow error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CI72TV5PVKPAEUEFXV672GYRBYKNGYCQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6622917410179853911=="

--===============6622917410179853911==
Content-Type: multipart/alternative; boundary="000000000000845b8805e8a90550"

--000000000000845b8805e8a90550
Content-Type: text/plain; charset="UTF-8"

Hi Kevin,

To expand on Brian's and Rob's comments, one issue that often comes up is
user logic bugs related to AXI stream's tvalid / tready signaling. The
user's logic will pass their test bench but behave strangely or lock up
when running on hardware. I've found that before running on hardware, you
should at least test your block with randomized assertion of noc_shell's
tvalids / treadys. Here is one way to do it based on the rfnoc-example gain
block (
https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v
):


  wire m_in_payload_tvalid_int, m_in_payload_tready_int;
  wire s_out_payload_tvalid_int, s_out_payload_tready_int;

  noc_shell_gain #(
    .CHDR_W      (CHDR_W),
    .THIS_PORTID (THIS_PORTID),
    .MTU         (MTU)
  ) noc_shell_gain_i (
    .rfnoc_chdr_clk      (rfnoc_chdr_clk),
    .rfnoc_ctrl_clk      (rfnoc_ctrl_clk),
    .rfnoc_chdr_rst      (),
    .rfnoc_ctrl_rst      (),
    .rfnoc_core_config   (rfnoc_core_config),
    .rfnoc_core_status   (rfnoc_core_status),
    .s_rfnoc_chdr_tdata  (s_rfnoc_chdr_tdata),
    .s_rfnoc_chdr_tlast  (s_rfnoc_chdr_tlast),
    .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),
    .s_rfnoc_chdr_tready (s_rfnoc_chdr_tready),
    .m_rfnoc_chdr_tdata  (m_rfnoc_chdr_tdata),
    .m_rfnoc_chdr_tlast  (m_rfnoc_chdr_tlast),
    .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvalid),
    .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),
    .s_rfnoc_ctrl_tdata  (s_rfnoc_ctrl_tdata),
    .s_rfnoc_ctrl_tlast  (s_rfnoc_ctrl_tlast),
    .s_rfnoc_ctrl_tvalid (s_rfnoc_ctrl_tvalid),
    .s_rfnoc_ctrl_tready (s_rfnoc_ctrl_tready),
    .m_rfnoc_ctrl_tdata  (m_rfnoc_ctrl_tdata),
    .m_rfnoc_ctrl_tlast  (m_rfnoc_ctrl_tlast),
    .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),
    .m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),
    .ctrlport_clk              (ctrlport_clk),
    .ctrlport_rst              (ctrlport_rst),
    .m_ctrlport_req_wr         (m_ctrlport_req_wr),
    .m_ctrlport_req_rd         (m_ctrlport_req_rd),
    .m_ctrlport_req_addr       (m_ctrlport_req_addr),
    .m_ctrlport_req_data       (m_ctrlport_req_data),
    .m_ctrlport_resp_ack       (m_ctrlport_resp_ack),
    .m_ctrlport_resp_data      (m_ctrlport_resp_data),
    .axis_data_clk (axis_data_clk),
    .axis_data_rst (axis_data_rst),
    .m_in_payload_tdata  (m_in_payload_tdata),
    .m_in_payload_tkeep  (m_in_payload_tkeep),
    .m_in_payload_tlast  (m_in_payload_tlast),

*    .m_in_payload_tvalid (m_in_payload_tvalid_int),
.m_in_payload_tready (m_in_payload_tready_int),*
    .m_in_context_tdata  (m_in_context_tdata),
    .m_in_context_tuser  (m_in_context_tuser),
    .m_in_context_tlast  (m_in_context_tlast),
    .m_in_context_tvalid (m_in_context_tvalid),
    .m_in_context_tready (m_in_context_tready),
    .s_out_payload_tdata  (s_out_payload_tdata),
    .s_out_payload_tkeep  (s_out_payload_tkeep),
    .s_out_payload_tlast  (s_out_payload_tlast),

*    .s_out_payload_tvalid (s_out_payload_tvalid_int),
.s_out_payload_tready (s_out_payload_tready_int),*
    .s_out_context_tdata  (s_out_context_tdata),
    .s_out_context_tuser  (s_out_context_tuser),
    .s_out_context_tlast  (s_out_context_tlast),
    .s_out_context_tvalid (s_out_context_tvalid),
    .s_out_context_tready (s_out_context_tready)
  );

  wire [31:0] rnd;
  rng rng (
    .clk(axis_data_clk),
    .rst(axis_data_rst),
    .out(rnd));

  assign m_in_payload_tvalid      = m_in_payload_tvalid_int  & rnd[0];
  assign m_in_payload_tready_int  = m_in_payload_tready      & rnd[0];

  assign s_out_payload_tvalid_int = s_out_payload_tvalid     & rnd[8];
  assign s_out_payload_tready     = s_out_payload_tready_int & rnd[8];


I suggest doing something similar with your block and see if it still
passes your test bench.

Jonathon

On Wed, Sep 14, 2022 at 3:33 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Kevin,
> If you run the rfnoc-example gain testbench, it should demonstrate that
> the testbench is providing a suitable environment for testing your custom
> logic or core.  Maybe see what is different between that and your
> testbench.
>
> If the problem turns out to be related to the "waiting for TREADY before
> asserting TVALID" issue presently discussed, it seems this can be solved by
> adding a buffer stage (register or FIFO) between your logic and the noc
> shell.
> Rob
>
> On Wed, Sep 14, 2022 at 2:11 PM Brian Padalino <bpadalino@gmail.com>
> wrote:
>
>> On Wed, Sep 14, 2022 at 1:55 PM Kevin Williams <zs1kwa@gmail.com> wrote:
>>
>>> Thanks Brian. I think the core gets generated in a way which respects
>>> back-pressure, so unless a TREADY is seen the core does not generate output
>>> samples. I have observed this by simulating the core in isolation.
>>>
>> On 14 Sep 2022, 17:49 +0200, Brian Padalino <bpadalino@gmail.com>, wrote:
>>>
>>> I believe the AXI spec says that data should be presented when valid,
>>> and the tready signal just accepts that data.  You can't rely on tready to
>>> be asserted before asserting tvalid.
>>>
>>> With that being said, I have no idea if this is the source of any of
>>> your issues.
>>>
>>> Brian
>>>
>>>
>> I don't quite understand what you said.  To copy from the AXI protocol
>> spec (
>> https://documentation-service.arm.com/static/60d5b244677cf7536a55c23e?token=)
>> section 2.2:
>>
>>   "A Transmitter is not permitted to wait until TREADY is asserted before
>> asserting TVALID. Once TVALID is
>> asserted, it must remain asserted until the handshake occurs.
>>
>>   A Receiver is permitted to wait for TVALID to be asserted before
>> asserting TREADY. It is permitted that a
>> Receiver asserts and deasserts TREADY without TVALID being asserted."
>>
>> Waiting for TREADY to be asserted is invalid as a transmitter.
>>
>> Is something not compliant and causing deadlock?
>>
>> Brian
>>
>

--000000000000845b8805e8a90550
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Kevin,<div><br></div><div>To expand on Brian&#39;s and =
Rob&#39;s comments, one issue that often comes up is user logic bugs relate=
d to AXI stream&#39;s tvalid / tready signaling. The user&#39;s logic will =
pass their test bench but behave strangely or lock up when running on hardw=
are. I&#39;ve found that before running on hardware, you should at least te=
st your block with randomized=C2=A0assertion of noc_shell&#39;s tvalids / t=
readys. Here is one way to do it based on the rfnoc-example gain block (<a =
href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/rfno=
c-example/fpga/rfnoc_block_gain/rfnoc_block_gain.v">https://github.com/Ettu=
sResearch/uhd/blob/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain=
/rfnoc_block_gain.v</a>):<br><br><br><font face=3D"monospace" style=3D"">=
=C2=A0 wire=C2=A0</font><span style=3D"font-family:monospace">m_in_payload_=
tvalid_int,=C2=A0</span><span style=3D"font-family:monospace">m_in_payload_=
tready_int</span><span style=3D"font-family:monospace">;</span></div><div><=
font face=3D"monospace">=C2=A0 wire=C2=A0</font><span style=3D"font-family:=
monospace">s_out_payload_tvalid_int</span><span style=3D"font-family:monosp=
ace">,=C2=A0</span><span style=3D"font-family:monospace">s_out_payload_trea=
dy_int;</span><span style=3D"font-family:monospace"><br></span></div><div><=
span style=3D"font-family:monospace"><br></span></div><div><font face=3D"mo=
nospace">=C2=A0 noc_shell_gain #(<br>=C2=A0 =C2=A0 .CHDR_W =C2=A0 =C2=A0 =
=C2=A0(CHDR_W),<br>=C2=A0 =C2=A0 .THIS_PORTID (THIS_PORTID),<br>=C2=A0 =C2=
=A0 .MTU =C2=A0 =C2=A0 =C2=A0 =C2=A0 (MTU)<br>=C2=A0 ) noc_shell_gain_i (<b=
r>=C2=A0 =C2=A0 .rfnoc_chdr_clk =C2=A0 =C2=A0 =C2=A0(rfnoc_chdr_clk),<br>=
=C2=A0 =C2=A0 .rfnoc_ctrl_clk =C2=A0 =C2=A0 =C2=A0(rfnoc_ctrl_clk),<br>=C2=
=A0 =C2=A0 .rfnoc_chdr_rst =C2=A0 =C2=A0 =C2=A0(),<br>=C2=A0 =C2=A0 .rfnoc_=
ctrl_rst =C2=A0 =C2=A0 =C2=A0(),<br>=C2=A0 =C2=A0 .rfnoc_core_config =C2=A0=
 (rfnoc_core_config),<br>=C2=A0 =C2=A0 .rfnoc_core_status =C2=A0 (rfnoc_cor=
e_status),<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tdata =C2=A0(s_rfnoc_chdr_tdata),=
<br>=C2=A0 =C2=A0 .s_rfnoc_chdr_tlast =C2=A0(s_rfnoc_chdr_tlast),<br>=C2=A0=
 =C2=A0 .s_rfnoc_chdr_tvalid (s_rfnoc_chdr_tvalid),<br>=C2=A0 =C2=A0 .s_rfn=
oc_chdr_tready (s_rfnoc_chdr_tready),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tdata =
=C2=A0(m_rfnoc_chdr_tdata),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tlast =C2=A0(m_r=
fnoc_chdr_tlast),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tvalid (m_rfnoc_chdr_tvali=
d),<br>=C2=A0 =C2=A0 .m_rfnoc_chdr_tready (m_rfnoc_chdr_tready),<br>=C2=A0 =
=C2=A0 .s_rfnoc_ctrl_tdata =C2=A0(s_rfnoc_ctrl_tdata),<br>=C2=A0 =C2=A0 .s_=
rfnoc_ctrl_tlast =C2=A0(s_rfnoc_ctrl_tlast),<br>=C2=A0 =C2=A0 .s_rfnoc_ctrl=
_tvalid (s_rfnoc_ctrl_tvalid),<br>=C2=A0 =C2=A0 .s_rfnoc_ctrl_tready (s_rfn=
oc_ctrl_tready),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tdata =C2=A0(m_rfnoc_ctrl_t=
data),<br>=C2=A0 =C2=A0 .m_rfnoc_ctrl_tlast =C2=A0(m_rfnoc_ctrl_tlast),<br>=
=C2=A0 =C2=A0 .m_rfnoc_ctrl_tvalid (m_rfnoc_ctrl_tvalid),<br>=C2=A0 =C2=A0 =
.m_rfnoc_ctrl_tready (m_rfnoc_ctrl_tready),<br>=C2=A0 =C2=A0 .ctrlport_clk =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ctrlport_clk),<br>=C2=A0 =
=C2=A0 .ctrlport_rst =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(ctrlp=
ort_rst),<br>=C2=A0 =C2=A0 .m_ctrlport_req_wr =C2=A0 =C2=A0 =C2=A0 =C2=A0 (=
m_ctrlport_req_wr),<br>=C2=A0 =C2=A0 .m_ctrlport_req_rd =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 (m_ctrlport_req_rd),<br>=C2=A0 =C2=A0 .m_ctrlport_req_addr =C2=
=A0 =C2=A0 =C2=A0 (m_ctrlport_req_addr),<br>=C2=A0 =C2=A0 .m_ctrlport_req_d=
ata =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_req_data),<br>=C2=A0 =C2=A0 .m_ctrlpor=
t_resp_ack =C2=A0 =C2=A0 =C2=A0 (m_ctrlport_resp_ack),<br>=C2=A0 =C2=A0 .m_=
ctrlport_resp_data =C2=A0 =C2=A0 =C2=A0(m_ctrlport_resp_data),<br>=C2=A0 =
=C2=A0 .axis_data_clk (axis_data_clk),<br>=C2=A0 =C2=A0 .axis_data_rst (axi=
s_data_rst),<br>=C2=A0 =C2=A0 .m_in_payload_tdata =C2=A0(m_in_payload_tdata=
),<br>=C2=A0 =C2=A0 .m_in_payload_tkeep =C2=A0(m_in_payload_tkeep),<br>=C2=
=A0 =C2=A0 .m_in_payload_tlast =C2=A0(m_in_payload_tlast),<br><b>=C2=A0 =C2=
=A0 .m_in_payload_tvalid (m_in_payload_tvalid_int),<br>=C2=A0 =C2=A0 .m_in_=
payload_tready (m_in_payload_tready_int),</b><br>=C2=A0 =C2=A0 .m_in_contex=
t_tdata =C2=A0(m_in_context_tdata),<br>=C2=A0 =C2=A0 .m_in_context_tuser =
=C2=A0(m_in_context_tuser),<br>=C2=A0 =C2=A0 .m_in_context_tlast =C2=A0(m_i=
n_context_tlast),<br>=C2=A0 =C2=A0 .m_in_context_tvalid (m_in_context_tvali=
d),<br>=C2=A0 =C2=A0 .m_in_context_tready (m_in_context_tready),<br>=C2=A0 =
=C2=A0 .s_out_payload_tdata =C2=A0(s_out_payload_tdata),<br>=C2=A0 =C2=A0 .=
s_out_payload_tkeep =C2=A0(s_out_payload_tkeep),<br>=C2=A0 =C2=A0 .s_out_pa=
yload_tlast =C2=A0(s_out_payload_tlast),<br><b>=C2=A0 =C2=A0 .s_out_payload=
_tvalid (s_out_payload_tvalid_int),<br>=C2=A0 =C2=A0 .s_out_payload_tready =
(s_out_payload_tready_int),</b><br>=C2=A0 =C2=A0 .s_out_context_tdata =C2=
=A0(s_out_context_tdata),<br>=C2=A0 =C2=A0 .s_out_context_tuser =C2=A0(s_ou=
t_context_tuser),<br>=C2=A0 =C2=A0 .s_out_context_tlast =C2=A0(s_out_contex=
t_tlast),<br>=C2=A0 =C2=A0 .s_out_context_tvalid (s_out_context_tvalid),<br=
>=C2=A0 =C2=A0 .s_out_context_tready (s_out_context_tready)<br>=C2=A0 );</f=
ont></div><div><span style=3D"font-family:monospace"><br></span></div><div>=
<span style=3D"font-family:monospace">=C2=A0 wire [31:0] rnd;</span></div><=
div><span style=3D"font-family:monospace">=C2=A0 rng rng (</span></div><div=
><font face=3D"monospace">=C2=A0 =C2=A0 .clk(</font><span style=3D"font-fam=
ily:monospace">axis_data_clk</span><span style=3D"font-family:monospace">),=
</span></div><div><font face=3D"monospace">=C2=A0 =C2=A0 .rst(</font><span =
style=3D"font-family:monospace">axis_data_rst</span><span style=3D"font-fam=
ily:monospace">),</span></div><div><span style=3D"font-family:monospace">=
=C2=A0 =C2=A0 .out(rnd)</span><font face=3D"monospace">);</font><br></div><=
div><br></div><div><font face=3D"monospace">=C2=A0 assign=C2=A0</font><span=
 style=3D"font-family:monospace">m_in_payload_tvalid=C2=A0 =C2=A0 =C2=A0 =
=3D=C2=A0</span><span style=3D"font-family:monospace">m_in_payload_tvalid_i=
nt=C2=A0 &amp; rnd[0];</span></div><div><font face=3D"monospace">=C2=A0 ass=
ign=C2=A0</font><span style=3D"font-family:monospace">m_in_payload_tready_i=
nt=C2=A0 =3D=C2=A0</span><span style=3D"font-family:monospace">m_in_payload=
_tready=C2=A0 =C2=A0 =C2=A0 &amp; rnd[0];</span><span style=3D"font-family:=
monospace"><br></span></div><div><span style=3D"font-family:monospace"><br>=
</span></div><div><div><font face=3D"monospace" style=3D"">=C2=A0 assign=C2=
=A0</font><span style=3D"font-family:monospace">s_out_payload_tvalid_int</s=
pan><span style=3D"font-family:monospace">=C2=A0=3D=C2=A0</span><span style=
=3D"font-family:monospace">s_out_payload_tvalid</span><span style=3D"font-f=
amily:monospace">=C2=A0 =C2=A0 =C2=A0&amp; rnd[8];</span></div><div><font f=
ace=3D"monospace">=C2=A0 assign=C2=A0</font><span style=3D"font-family:mono=
space">s_out_payload_tready=C2=A0 =C2=A0=C2=A0</span><span style=3D"font-fa=
mily:monospace">=C2=A0=3D=C2=A0</span><span style=3D"font-family:monospace"=
>s_out_payload_tready_int</span><span style=3D"font-family:monospace">=C2=
=A0&amp; rnd[8];</span></div></div><div><font face=3D"monospace"><br></font=
></div><div><br></div><div><font face=3D"arial, sans-serif">I suggest doing=
 something similar with your block and see if it still passes your test ben=
ch.</font></div><div><font face=3D"arial, sans-serif"><br></font></div><div=
><font face=3D"arial, sans-serif">Jonathon</font></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022=
 at 3:33 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.=
edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr">Hi Kevin,<div>If you run the rfnoc-example gain testben=
ch, it should demonstrate that the testbench is providing a suitable enviro=
nment for testing your custom logic or core.=C2=A0 Maybe see what is differ=
ent between that and your testbench.=C2=A0=C2=A0</div><div><br></div><div>I=
f the problem turns out to be related to the &quot;waiting for TREADY=C2=A0=
before asserting TVALID&quot; issue presently discussed, it seems this can =
be solved by adding a buffer stage (register or FIFO) between your logic an=
d the noc shell.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 2:11 PM Brian P=
adalino &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadal=
ino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 1:55 PM =
Kevin Williams &lt;<a href=3D"mailto:zs1kwa@gmail.com" target=3D"_blank">zs=
1kwa@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">



<div>
<div name=3D"messageBodySection">
<div dir=3D"auto">Thanks Brian. I think the core gets generated in a way wh=
ich respects back-pressure, so unless a TREADY is seen the core does not ge=
nerate output samples. I have observed this by simulating the core in isola=
tion.</div></div></div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><div name=3D"messageBodySection">
</div>
<div name=3D"messageReplySection">On 14 Sep 2022, 17:49 +0200, Brian Padali=
no &lt;<a href=3D"mailto:bpadalino@gmail.com" target=3D"_blank">bpadalino@g=
mail.com</a>&gt;, wrote:<br>
<blockquote type=3D"cite" style=3D"border-left:thin solid grey;margin:5px;p=
adding-left:10px">
<div dir=3D"ltr">I believe the AXI spec says that data should be presented =
when valid, and the tready signal just accepts that data.=C2=A0 You can&#39=
;t rely on tready to be asserted before asserting tvalid.
<div><br></div>
<div>With that being said, I have no idea if this is the source of any of y=
our issues.</div>
<div><br></div>
<div>Brian</div></div></blockquote></div></div></blockquote><div><br></div>=
<div>I don&#39;t quite understand what you said.=C2=A0 To copy from the AXI=
 protocol spec (<a href=3D"https://documentation-service.arm.com/static/60d=
5b244677cf7536a55c23e?token=3D" target=3D"_blank">https://documentation-ser=
vice.arm.com/static/60d5b244677cf7536a55c23e?token=3D</a>) section 2.2:</di=
v><div><br></div><div>=C2=A0 &quot;A Transmitter is not permitted to wait u=
ntil TREADY is asserted before asserting TVALID. Once TVALID is</div>assert=
ed, it must remain asserted until the handshake occurs.</div><div class=3D"=
gmail_quote"><br>=C2=A0 A Receiver is permitted to wait for TVALID to be as=
serted before asserting TREADY. It is permitted that a<br>Receiver asserts =
and deasserts TREADY without TVALID being asserted.&quot;</div><div class=
=3D"gmail_quote"><br></div><div class=3D"gmail_quote">Waiting for TREADY to=
 be asserted is invalid as a transmitter.</div><div class=3D"gmail_quote"><=
br></div><div class=3D"gmail_quote">Is something not compliant and causing =
deadlock?</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quo=
te">Brian</div></div>
</blockquote></div>
</blockquote></div>

--000000000000845b8805e8a90550--

--===============6622917410179853911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6622917410179853911==--
