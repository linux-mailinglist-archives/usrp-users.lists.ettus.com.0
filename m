Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D48A660778
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 20:56:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CBEC23844A6
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jan 2023 14:56:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673035000; bh=UaJPL2NbuOrjnRGlGtPbM3xidhCBza7Df3IvuqfRzWE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=I83f55Zh/Ry7vhisvv5lUyqB7rROJoTV2syUh8lzTeL59ZDR6xzrjJJmaIgV5awJ9
	 9uqd+vHvMb7n4uK13o7YggHZCa9URZpTEGwbNdxMrj2YlIlSrxEMKDbx7aia3l8E43
	 xd/IjG479V4Zc92DwoEkI36fMgHWcvIYPNTsIAkvhRWTxwnvvTc+mYpeEwfpoCkrlB
	 dKUaqXx0v5pDGD4SZSOVDcddmUtosWK1Hoq8gx/iAJKel3sh3pgxnpuhpdWlNw0X2Q
	 fp8WFsEA4a8oOhssPN3in4+mAa9afA9e8i5L+JMwhesFdXRuWLdP8JgKtWlNxXg2Mj
	 FvaTTS5mO2/Ig==
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 864F138449E
	for <usrp-users@lists.ettus.com>; Fri,  6 Jan 2023 14:56:32 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Rsvzhoa3";
	dkim-atps=neutral
Received: by mail-ed1-f46.google.com with SMTP id c17so3644384edj.13
        for <usrp-users@lists.ettus.com>; Fri, 06 Jan 2023 11:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nPW3vVpdA8pT0DmYnTmOEFFD1Y6B9yyI7z7BjslsygY=;
        b=Rsvzhoa3Q7eLe69FU0VlIRve/ZSwmbo2a0pAdBBMFOQ+THBCGzLR/91jG3MmHgHn8+
         lx2zQjlr7j9fHg30KxwIFf1o8CWwwZ1AI8f4VaX4JvcMI4SnrK8VUJkpjpo9D1llWbuD
         I6bu8wIvFZq3whNtcf7wT4Uv3K6++PqW6qvJ+pS2V13apzIxv/WhLqjhSps8dahBMi3O
         P2OQEG2DTJYnW7fPUAIFialHSbXOO5zmP2qnn7kObcvAanHQvM9QiPTf9tmJjauXguWS
         I/A+D0iHS1czKVixHCygnSKEJ7WrJIxKPZs+kku1q328Y/kVniqR5DCBGlAkwWDPdq3F
         h28A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nPW3vVpdA8pT0DmYnTmOEFFD1Y6B9yyI7z7BjslsygY=;
        b=u8bzRLIEfV4NcSz18q3Nc3tHkIE9walbxx3FHZteX0SJaMtVK/RnPInt1VpKEoCK2Z
         z2PZigApjaulzGWEwo4r6oEywjKXzF6SylLqjxs1AVykiVYcodzn7oy9/sME+6M2y2EC
         siVpGK93hFgkKBed4Wm4il/ormXYvX6JgrpNt3LmvPR/IxhfdCDsw6Bs/2dH9KK3ARZG
         BMJg7GiUv3zT8nZ4uVaC4yppF8pOpMiJUlBbvEGrVqRPdOkNo8MtS9Z9H6qNRhn/ydf/
         RJvBOIas3Hsb/JZgpK0xSmygGR+zQdL5OEgRVDhbcuU5V1aC3ez0trW1EkZSNq22FAYo
         drQg==
X-Gm-Message-State: AFqh2kqCZEcH0dksJxvwP5JDfPfr2j82o3jL8JvlDfa071F8lB28gt21
	2gp/jWJE/A0AXptFqJV0ywTWdTZOYURGCMkwkW/Mh1l9/bEBbA==
X-Google-Smtp-Source: AMrXdXtQuPougI81gI0Wv7cBEApJgCKL3svTruGRaN3foCeVmzs35L+2bGgZXSFsLangFxfwmLlfF9HyK1p8sZpPCkE=
X-Received: by 2002:a05:6402:c91:b0:46d:8ae8:961c with SMTP id
 cm17-20020a0564020c9100b0046d8ae8961cmr6002762edb.359.1673034991150; Fri, 06
 Jan 2023 11:56:31 -0800 (PST)
MIME-Version: 1.0
References: <CAEXYVK6SzuxTxGM6kZkxE7+z8F7ooGDzsHAhxcedheDdz=yOFg@mail.gmail.com>
 <CAB__hTS=ShmgOyTbxdMU5RK4OtGP0ru5itBYSBx-bQKdAgAt2A@mail.gmail.com> <CAEXYVK5iKjhYeJdzX5eXvsNY7sro_bhUuQHYUv_noZFw=bvqVQ@mail.gmail.com>
In-Reply-To: <CAEXYVK5iKjhYeJdzX5eXvsNY7sro_bhUuQHYUv_noZFw=bvqVQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 6 Jan 2023 14:56:19 -0500
Message-ID: <CAB__hTQnWSkopQu8TeepTrXdQ9dVCOLbCZoxJ9n-2Fq-1ekWtg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: S4D24UTWQPIOIHZVFWWYGDFEULHDOSOI
X-Message-ID-Hash: S4D24UTWQPIOIHZVFWWYGDFEULHDOSOI
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC 4.0 Generated NoC Shell
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S4D24UTWQPIOIHZVFWWYGDFEULHDOSOI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Jan 6, 2023 at 2:09 PM Brian Padalino <bpadalino@gmail.com> wrote:
>
> On Fri, Jan 6, 2023 at 1:11 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>> On Thu, Jan 5, 2023 at 7:46 PM Brian Padalino <bpadalino@gmail.com> wrote:
>> > Before RFNoC 4.0, there was a generic NoC shell that was used instead of one being generated for each of the blocks.
>> >
>> > I see there is a noc_shell_generic_ctrlport_pyld_chdr, but it isn't used anywhere.
>> >
>> > Is there a reason that a generic one isn't utilized and that ones are being generated individually for each block?
>>
>> With RFNoC 4.0, you have various options for which interface you would
>> like for payload data and packet context data. These options, which
>> are in the block XML file, determine which signals get passed in and
>> out of your block.  So, the reason it is custom is to handle the
>> variety of interface options.
>
>
> There are no more XML files, right?  It's all YAML?  Right?

My mistake. You are right.

>
> In the specification:
>
>   https://files.ettus.com/app_notes/RFNoC_Specification.pdf
>
> ... section 2.5.5.3 shows axis_chdr, axis_pyld_ctxt, and axis_data.  But beyond that, I don't see any descriptions of the differences.  Moreover, I am unsure if I change the YAML and use rfnoc_image_builder to build things, does that regenerate the underlying noc_shell_<block>.v file in the OOT description?  Or is it just an input to some other tool?  I am also confused by Figure 18 at the end of the document.  I'm not sure I see any XML files or the rfnocmodtool GUI?
>
> Lastly, I see rfnoc_blocktool in uhd under host/utils/rfnoc_blocktool which has rfnoc_create_verilog.py which looks are fpga_iface but I didn't see anything get installed from UHD.  Is rfrnocmodtool from gr-ettus not the right thing to use anymore?
>
> I might just be getting confused by out of date tutorials and specifications, but figured I'd try to get my bearings straight.

If we set aside "rfnocmodtool" for a sec (since this only seems to
come with gnuradio uhd which I don't have), I can say that the
procedure is the following:
- choose your desired options in the block yaml
- run rfnoc_create_verilog.py (it is in the UHD repo) to process the
yaml and produce several files including the custom noc_shell. Note
that this will overwrite existing files so you have to take
appropriate steps if you have some existing code and you later want to
change the yaml and re-run rfnoc_create_verilog. Note that the other
files produced are templates for your custom block and for a test
bench.
- modify the created templates to implement your desired logic
- run rfnoc_image_builder (or you can do the same thing with running
'make' from an OOT build folder) to build the custom image.  Although
this tool does access your block yaml, it does not produce a noc_shell
or other custom files. This is done as mentioned above with
rfnoc_create_verilog.

If you use "rfnocmodtool", steps might be slightly different - I
haven't tried it since moving to UHD 4.x.

Let me know if this is unclear or if you still have questions.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
