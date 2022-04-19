Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FC15066FB
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 10:32:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7270A384BB0
	for <lists+usrp-users@lfdr.de>; Tue, 19 Apr 2022 04:32:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650357150; bh=4P1cWooiijiiAFblAqlN+WtwY6i68Y+4kGxeQJ3/MJM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EkSxc3i8QxnTbtl1QDEyrEKnkXYmjx4NONqN2sa1+Y6FHNkXOzTqtyv8PEsbgbu0N
	 I9w0M/Ed7/E4T8XIq28N2NB9iNCwxXo+mrxmdLV5mCjxw67xuu4VxRLicD33ZxR0DV
	 c5Y7TVXTxXdnokzaL2jMlgVUAAJ4YvNgP8VFg/Zg20VtdImCyUKxRTDQw3sUap42GJ
	 HABoy5eVDu8yfGT4xYdlTf4oxxVFlf2TzNdMxetadxNKf7GpjGJ0mdzL0/y7stLDBC
	 yUNN+Ob+KKutlhNfCWFuJJ+UYPA7Y0bdad23yn5sM3MOn1CZUZ00G2A75Jtn66a7qQ
	 u2Z6xlpqbKvtQ==
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by mm2.emwd.com (Postfix) with ESMTPS id D7D37384602
	for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 04:31:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ITs6YTSe";
	dkim-atps=neutral
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-2f19fdba41fso38530647b3.3
        for <usrp-users@lists.ettus.com>; Tue, 19 Apr 2022 01:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=130WFvPlbvTHGZxUkYTinFSKsGNvB9lnTwBY2cwROsA=;
        b=ITs6YTSe0P6fF7+Tbx6cx4iCOvHvnGb7E9WJG19A84y3RTfz7Q0D6VwDOrP8OS97+E
         axCdeiw0Sye4bSsyeinm/dailOF43EqMm+UYXkDUE/lpn8/xLkbuiSC1SYq9GMgdR7gt
         sCOChvzxZBPE5FcGcgEQnxEPmsxDxxsdNB+PKV2MbWJLTlanSjlGB3BTw+X7A6LDfgUc
         Yyn2gyN9q6LFIXmTu02fYKKYdMlTmuP3lyfwgSu1mx+EYru8Z39wqEOIYuOaEfjd0cH2
         +BekLY6qT1no/RaHLWYvwMYfZBvjEQfKO+MIZWxsEoR+u1sMfKgsT08BuSGO9itSXwQp
         24qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=130WFvPlbvTHGZxUkYTinFSKsGNvB9lnTwBY2cwROsA=;
        b=5UM5zJe9QBNk6qUQ5rcCnJrIdfW8jccAwIUqbJUJhAfb/PoT1xN9Pa+lou0kFe8hlC
         cS4QMXcGsugegj19UMn6i8yUJyK59eQRn2m7ku338QLLtylbBgY18TObS3+3p2dVlyAx
         DWSIuyLVQgP+L1ZN+0FpoAJ5vhWj12NdnybAVmnwCzzgIaOKWFv9oo/OSvJnhbYhwh0f
         HtKCZA70rOamtCd1EWsAhAI+pr2/W9WB1Lhwi0i/Vk+PSn8JMmaKGRBbOJHsrr8mmpLy
         tFG/t5qn93pghaFBKK6kELdp5i4NnvCGIIhtUSvSbVmY7Oi79CxiYNPUFAaStD8lqGsg
         4rLA==
X-Gm-Message-State: AOAM533Wf3QlQLZJjLHSbDjk504BZ9yjVMW/2So1GQ/gdPj3EBm3yJhS
	MWbTs2OyUbWYMzFPUEFoxsvq4+BhRQEOVLhFtZpueJQGnIl6FN5f
X-Google-Smtp-Source: ABdhPJwbnNexA3xbpsIXCTFxb5ur89boLoOy0KJgJr2p9qSETW0KyfWtxaSOM5PfC6xXj3E/JIMvag/Y1vJGDaH6Tx0=
X-Received: by 2002:a0d:d683:0:b0:2eb:ed49:dde6 with SMTP id
 y125-20020a0dd683000000b002ebed49dde6mr14300415ywd.363.1650357089700; Tue, 19
 Apr 2022 01:31:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Ps2J3SrReyU9v2PODR26qeF5NN8AFQ1sSV8zdseSZKZHw@mail.gmail.com>
 <CAFche=hJt3LVhU63kuToBgTiQS20S3sC8A44OK5Or2QtuiLqBw@mail.gmail.com>
In-Reply-To: <CAFche=hJt3LVhU63kuToBgTiQS20S3sC8A44OK5Or2QtuiLqBw@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Tue, 19 Apr 2022 13:01:18 +0430
Message-ID: <CAA=S3PvsQsJT7C-g68c3Qx1j6ECMqHTqo7qzc33VdgW1BK97fg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: WI722F2O2L7HAY6KBU7RNWF2YNGACETX
X-Message-ID-Hash: WI722F2O2L7HAY6KBU7RNWF2YNGACETX
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why include a Verilog file not work in the RFNOC block?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WI722F2O2L7HAY6KBU7RNWF2YNGACETX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2920793503316273137=="

--===============2920793503316273137==
Content-Type: multipart/alternative; boundary="000000000000158e9105dcfdb4a3"

--000000000000158e9105dcfdb4a3
Content-Type: text/plain; charset="UTF-8"

Ok, thanks. My problem is solved.

On Tue, Apr 19, 2022 at 5:29 AM Wade Fife <wade.fife@ettus.com> wrote:

> Hi sp,
>
> You can include files. It looks like you misspelled "correlate" (the error
> says 'corrleate.vh'). Also, if the file is not in the same folder as
> rfnoc_block_correlate.v, then you may need to provide a relative path to
> the file.
>
> Thanks,
>
> Wade
>
> On Mon, Apr 18, 2022 at 4:56 AM sp h <stackprogramer@gmail.com> wrote:
>
>> Why include a Verilog file not work in the RFNOC block?
>> In Verilog, we can include another file in the source Verilog file, but
>> when I did in an RFNOC block I faced errors...
>> can you any offers?
>>
>> ERROR: [VRFC 10-3195] cannot open include file 'corrleate.vh'
>> [rfnoc/rfnoc/fpga/rfnoc_block_correlate/rfnoc_block_correlate.v:26]
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000158e9105dcfdb4a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok, thanks. My problem is solved.<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 19, 2022=
 at 5:29 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>Hi sp,</div><div><br></div><div>You can in=
clude files. It looks like you misspelled &quot;correlate&quot; (the error =
says &#39;corrleate.vh&#39;). Also, if the file is not in the same folder a=
s=20
rfnoc_block_correlate.v, then you may need to provide a relative path to th=
e file.</div><div><br></div><div>Thanks,</div><div><br></div><div>Wade<br><=
/div><div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Apr 18, 2022 at 4:56 AM sp h &lt;<a href=3D"mailto:=
stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr">Why include a Verilog file not work in the RFNOC block?<br><div>I=
n Verilog, we can include another file in the source Verilog file, but when=
 I did in an RFNOC block I faced=C2=A0errors...</div><div>can you any offer=
s?</div><div><br></div><div>ERROR: [VRFC 10-3195] cannot open include file =
&#39;corrleate.vh&#39; [rfnoc/rfnoc/fpga/rfnoc_block_correlate/rfnoc_block_=
correlate.v:26]<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000158e9105dcfdb4a3--

--===============2920793503316273137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2920793503316273137==--
