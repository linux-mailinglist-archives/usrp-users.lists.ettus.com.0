Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 61467277298
	for <lists+usrp-users@lfdr.de>; Thu, 24 Sep 2020 15:38:16 +0200 (CEST)
Received: from [::1] (port=47618 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLRRr-00043y-O6; Thu, 24 Sep 2020 09:38:11 -0400
Received: from mail-ot1-f41.google.com ([209.85.210.41]:34482)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kLRRn-0003Ja-KV
 for usrp-users@lists.ettus.com; Thu, 24 Sep 2020 09:38:07 -0400
Received: by mail-ot1-f41.google.com with SMTP id h17so3189415otr.1
 for <usrp-users@lists.ettus.com>; Thu, 24 Sep 2020 06:37:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nG0QPnAOYRsgZ/cmb9l/0ocxJAX/1bOGLg13LlQef5M=;
 b=M58JRC0deI/u/mNQLd4xtTV71t0ZbkCmy5T9vi2GTKtVYqvl5Y30cjkg+48AxDZZCp
 k+e8bcEQ4VX6iLPR5Zea1U2a9gTxiju4DcGuDl0X0fFR5mseafcvagRMwWUUUpT0LHIW
 wOrq91C7gGciHbxBmHPjhScV/0m5W5U2PZgrY+MM3cmtT0MQkX2tsDlRsTs2s0qembwR
 eMpdmoxiiTsOpWRhVevtCjOt6XsL72fILzid+f9p1L12HkZFGjd1xBn28BCpqfgCNC9V
 aX1P5zkyDs+pAP2SNxqkW/PhfqywRqZUKTvltkKqv1r+/fVWJh/2kkrm7JPoQki/b07B
 hMTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nG0QPnAOYRsgZ/cmb9l/0ocxJAX/1bOGLg13LlQef5M=;
 b=GNT9Ohm51oclb4mstSIr2Vnr6LJsggfJj7SrHVs+BXhK8h+9opeurK1Aj5li1phr0x
 37NcVmBe+Am6Wu12EL5+hHo7ctTa/4JXQvVTUEXpYAYLhuu8F/zB5wRJao/M4WzzsTWJ
 NQVvHdTBLhJvL37lvgx3mB+l0YsL7DS2A2MULwobmC+SRLUUU01P31eHL/Kp0GLk3pz2
 8bxqo0vhiNXVTMFqrRfEi8mw9x6cdDyll4UOwNWka8cnKcysYAIxe0oxv55b3DcwYaAk
 sChIfd7T8xOigd+gplUrB8oYvUSUt2kB/4yeksCvG/4iwg+Fm4DgfLosaXGvD3qdASPr
 7fFA==
X-Gm-Message-State: AOAM531o2FqwmQ/459k+qaHDJziljbtVesWcJqM9s84VUX0Sm/KWoI2B
 fOeWAyPEs/gor8bgNXSewComr91wuaxqmC1lB+ETBQ==
X-Google-Smtp-Source: ABdhPJwTN6w3rAQLmnFmREEyFIHYN4L9waeNoMESw6k+JqWX+UdD54/iqb9rn+mOcDo9vrFByV9nb+lNooqh73xbkkc=
X-Received: by 2002:a9d:65cc:: with SMTP id z12mr3030125oth.301.1600954646716; 
 Thu, 24 Sep 2020 06:37:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwrT9RfsWhU+70sBsC-dFCAxnB7FT=yNX885z4j3UbhRoHMSA@mail.gmail.com>
 <1e2c2623-d3e7-dbc8-7d1b-89c7c3af7ecb@ettus.com>
 <CAB__hTRnkSQLv58d2p=VKjQqqxx8Za8v-t-JHncK6RQCQYjaNA@mail.gmail.com>
 <90228063-f609-8d87-cdae-268e7a359857@ettus.com>
In-Reply-To: <90228063-f609-8d87-cdae-268e7a359857@ettus.com>
Date: Thu, 24 Sep 2020 09:37:16 -0400
Message-ID: <CAB__hTRBS-OgpcO464tKhE-urioMLkc6Kw89WOphMQtO_116iQ@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC output format and channel output queries
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

> Rob, you might want to check out host/tests/rfnoc_graph_mock_nodes.hpp,
> and look at the RSSI property. It's supposed to mock a property that
> only represents a value that is read back from the radio (none of our
> RFNoC radios actually have that property, but we provisioned for it in
> the specification, and this is an example of that).
>
> Instead of updating a counter (which we only do because this is a mock
> for unit testing), you would peek a register.

Hi Martin,
I looked at this and implemented a property using the ALWAYS_DIRTY
dependency shown in the mock case. This does work, but it causes my
actual register peek to occur quite a lot - not just when a user calls
get_property for that property.
Rob

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
