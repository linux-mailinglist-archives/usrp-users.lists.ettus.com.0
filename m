Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A94FD605431
	for <lists+usrp-users@lfdr.de>; Thu, 20 Oct 2022 01:49:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 949733809A9
	for <lists+usrp-users@lfdr.de>; Wed, 19 Oct 2022 19:49:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666223380; bh=GCr/QcwCFyPcuKVwkxRGicjKQXXFir/waTFPDkKw48I=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MNx0zx2QD14g0+SvarPXr+S0ILs57aiYzTQWGCFgDiubo8WyJ6eFSOwJV7pJiMp+U
	 0B116Hl73oENyMLh317FqLtyPDUYVm7rdxXxghxO1YacI5IdqzvMoijheWNnEwWkPG
	 qbCYC4nse1gAt3JGrlGFxITQirV9WAMSozWL/sNUAODbBhBuPl6rgmHlXx82U2Zyc0
	 L/IA8QBFsuDX51x3u3SXas6cix9nJY1RyZ9Rr9stqphZBfufViJsyzxWrfSEFcv/nj
	 Qp6ZaLVe94CrnybomDwIqCMbXG3LlQJ/TrcVCkTcdK0vL2xcY9AYRJ6PJ/9K2Odvbj
	 HGy5nNU0ZsG/A==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 34912383B5D
	for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 19:47:53 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TN2PzHin";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id m6so11821406qkm.4
        for <usrp-users@lists.ettus.com>; Wed, 19 Oct 2022 16:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wAf+8TE8b4Mm4dRs4mheikfw4o3jfcKbYRERdmZdIM0=;
        b=TN2PzHin6xv21dg2HW5FpVIJ4nnNHCtHlcGuG1MD2iMMv8oZ/6bv50+V8GI01kqRSx
         DI4r+wCRnBTHMgU6y+KhyZzhFsxUmTMrgMMW5PZjkh5I8mv+Wi+eZfCF55FIxfgr1uyW
         YS4hwQ0KJFQV/Y4m0TEbDtkhHj8d+uvbdxk29SFwkeR2a38e6nvwYlPmQ5jT+dhRRdpb
         86aPRFmEXRHn21UKs2DYyolrB0HR2AkY0aTOQdgkq69msbRGV3X6rY9tj1AK73UaxWxy
         q0TT9Ye9l+LVaK7eBX4sVd/z18qfOy0JoewBXHHquEhjTK+t6pU2CIoUjwk3bmU5snfJ
         8ThA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wAf+8TE8b4Mm4dRs4mheikfw4o3jfcKbYRERdmZdIM0=;
        b=iSWUwmBrAwBoxW3OI7lw6x79Q0Vjfo/FYHn75EHHCC0PLj4qfIfja2LKyNBkS2ZMOZ
         qdl1IhPsM98Dqbbc6NqUaywALi3KfBHNn+SKDtCUpsLCQmjgL6lby/0g95pTIBKgOK38
         rNSX283wwctWBd5TiOWWX99MRAzseAHqkzka6Cc6q1914vqc1NGhOdjKjVdDaxVe/2Jl
         6RC+s0kN3Yxv2Ghi9vUqz1YJ9V90DMfPQ5Tfe/Cm7+qEFRfFpl7PyfAH47Z+r7aZ46y5
         HYww2Sh3LiH9X5if4RlxSi+su/lqIWQb5SCpKFRVATpL2ymi7qyX42UmTfol/cyt2YxH
         JMsA==
X-Gm-Message-State: ACrzQf0TfnB2vwY6jKDPsUE85NKcNIEVWVMJbYfWxJFBDuHHFelRi9b6
	cE/xVsd0bfM3U2MM2rbUGo2GsxhrzoY=
X-Google-Smtp-Source: AMsMyM7/GTmm4FCuDpEgZW9c3PVsW7xK4XyumdvguAuqP7W7wxUw3Sykf/Voe5K4oQ6nJUAuT3RINQ==
X-Received: by 2002:a05:620a:4725:b0:6ee:bf5c:915a with SMTP id bs37-20020a05620a472500b006eebf5c915amr7396398qkb.326.1666223272341;
        Wed, 19 Oct 2022 16:47:52 -0700 (PDT)
Received: from [192.168.2.190] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id d3-20020a05620a240300b006cfc01b4461sm5928362qkn.118.2022.10.19.16.47.51
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 16:47:51 -0700 (PDT)
Message-ID: <7b56d42a-06b9-dc9a-77cb-9743a8662dcb@gmail.com>
Date: Wed, 19 Oct 2022 19:47:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR03MB4678A2D56009EE2570239479D32B9@BYAPR03MB4678.namprd03.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <BYAPR03MB4678A2D56009EE2570239479D32B9@BYAPR03MB4678.namprd03.prod.outlook.com>
Message-ID-Hash: 3P3YZPZV7BW5ILA7WKRYL3NUAWXA5ZQP
X-Message-ID-Hash: 3P3YZPZV7BW5ILA7WKRYL3NUAWXA5ZQP
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Rate change in RFNOC4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3P3YZPZV7BW5ILA7WKRYL3NUAWXA5ZQP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7360833525754327894=="

This is a multi-part message in MIME format.
--===============7360833525754327894==
Content-Type: multipart/alternative;
 boundary="------------lkdgc4fyHLOevSphtoDgfMIG"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------lkdgc4fyHLOevSphtoDgfMIG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-10-19 19:01, Minutolo, Lorenzo wrote:
> Hi All,
> I'm trying to develop a rfnoc4 block that changes the data rate and=20
> the packet size.
> Specifically, my block is very similar to the keep-1-in-N block=20
> operated in packet mode with the exception that the first arbitrary M=20
> packets are discarded, the output packet-in-N is an average of the=20
> packets that arrived in the meantime and the output packed is cropped=20
> respect to the input packet length.
>
> I'm trying to understand how to develop this block.
>
> The first approach that comes to my mind is to copy the keep-1-in-N=20
> and modify it. First question:
>
>  1. How do I port the existing keep-1-in-N block to a new OOT block?
>
> The second question is relative to how to deal with rate change and=20
> packet size change in a OOt block. Except for looking into files, I=20
> cannot find a comprehensive guide.
>
>  2. Is there a hands-on guide on how to develop these blocks other
>     than the gain example?
>
> I'm a physicist with some FPGA knowledge, not a FPGA developer:
>
>  3. are there companies/contractors that can design these blocks?
>
>
> Thanks,
> Lorenzo
>
Are you considering the FPGA path because you feel that the sample-rates=20
are too high for an ordinary computer to cope with, or
 =C2=A0 because it just "seems right".

I'll note that the CASPER folks (at U C Berkeley) routinely do=20
FPGA-based signal-processing chains for radio science--they
 =C2=A0 might be a source of some help for FPGA development.

I'm not an RFNOC person myself.=C2=A0 My preference is to avoid radio-sci=
ence=20
applications where "FPGA" is the only answer.
 =C2=A0 But, that approach isn't, I admit, universally applicable....


--------------lkdgc4fyHLOevSphtoDgfMIG
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-10-19 19:01, Minutolo, Lorenzo
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:BYAPR03MB4678A2D56009EE2570239479D32B9@BYAPR03MB4678.namprd03=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Hi All,</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I'm trying to develop a rfnoc4 block that changes the data rate
        and the packet size.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        Specifically, my block is very similar to the keep-1-in-N block
        operated in packet mode with the exception that the first
        arbitrary M packets are discarded, the output packet-in-N is an
        average of the packets that arrived in the meantime and the
        output packed is cropped respect to the input packet length.</div=
>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        I'm trying to understand how to develop this block.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <br>
      </div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        The first approach that comes to my mind is to copy the
        keep-1-in-N and modify it. First question:</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
        <ol>
          <li><span>How do I port the existing keep-1-in-N block to a
              new OOT block?</span></li>
        </ol>
        <div><span>The second question is relative to how to deal with
            rate change and packet size change in a OOt block. Except
            for looking into files, I cannot find a comprehensive guide.<=
/span></div>
        <ol start=3D"2">
          <li>Is there a hands-on guide on how to develop these blocks
            other than the gain example?</li>
        </ol>
        <div>I'm a physicist with some FPGA knowledge, not a FPGA
          developer:</div>
        <ol start=3D"3">
          <li>are there companies/contractors that can design these
            blocks?</li>
        </ol>
        <div><br>
        </div>
        <div>Thanks,
          <div>Lorenzo</div>
        </div>
      </div>
      <br>
    </blockquote>
    Are you considering the FPGA path because you feel that the
    sample-rates are too high for an ordinary computer to cope with, or<b=
r>
    =C2=A0 because it just "seems right".<br>
    <br>
    I'll note that the CASPER folks (at U C Berkeley) routinely do
    FPGA-based signal-processing chains for radio science--they<br>
    =C2=A0 might be a source of some help for FPGA development.<br>
    <br>
    I'm not an RFNOC person myself.=C2=A0 My preference is to avoid
    radio-science applications where "FPGA" is the only answer.<br>
    =C2=A0 But, that approach isn't, I admit, universally applicable....<=
br>
    <br>
    <br>
  </body>
</html>

--------------lkdgc4fyHLOevSphtoDgfMIG--

--===============7360833525754327894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7360833525754327894==--
