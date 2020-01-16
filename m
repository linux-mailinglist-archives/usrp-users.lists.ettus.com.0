Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B33113FBB6
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jan 2020 22:52:32 +0100 (CET)
Received: from [::1] (port=52424 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1isD42-0004Nt-6U; Thu, 16 Jan 2020 16:52:30 -0500
Received: from outgoing-exchange-1.mit.edu ([18.9.28.15]:47135)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ri28856@mit.edu>) id 1isD3y-0004JJ-T4
 for usrp-users@lists.ettus.com; Thu, 16 Jan 2020 16:52:27 -0500
Received: from w92exedge3.exchange.mit.edu (W92EXEDGE3.EXCHANGE.MIT.EDU
 [18.7.73.15])
 by outgoing-exchange-1.mit.edu (8.14.7/8.12.4) with ESMTP id 00GLq2id005124
 for <usrp-users@lists.ettus.com>; Thu, 16 Jan 2020 16:52:17 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 w92exedge3.exchange.mit.edu (18.7.73.15) with Microsoft SMTP Server (TLS) id
 15.0.1293.2; Thu, 16 Jan 2020 16:49:39 -0500
Received: from oc11expo22.exchange.mit.edu (18.9.4.84) by
 oc11expo22.exchange.mit.edu (18.9.4.84) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Thu, 16 Jan 2020 16:51:15 -0500
Received: from oc11expo22.exchange.mit.edu ([18.9.4.84]) by
 oc11expo22.exchange.mit.edu ([18.9.4.84]) with mapi id 15.00.1365.000; Thu,
 16 Jan 2020 16:51:15 -0500
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: High Throughput scheduled receives
Thread-Index: AQHVzLRKwvd/+8bo3ECQ0mAxMNK1cw==
Date: Thu, 16 Jan 2020 21:51:15 +0000
Message-ID: <1579211475555.38318@mit.edu>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [129.55.200.20]
MIME-Version: 1.0
Subject: [USRP-users] High Throughput scheduled receives
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Richard J. Muri via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Richard J. Muri" <ri28856@mit.edu>
Content-Type: multipart/mixed; boundary="===============3041976039651684415=="
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

--===============3041976039651684415==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_157921147555538318mitedu_"

--_000_157921147555538318mitedu_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I'm developing a UHD C++ application for testing the limits of the scheduli=
ng granularity I can achieve using an X310 on my host system. I'm running a=
 Linux box with dual Xeon gold processors and a 10 gigabit ethernet interfa=
ce to my X310. The X310 is clocked to 100 MSPS.


The premise is to simulate a packet arriving and telling the USRP to transm=
it or receive in the near future. Each packet has a reception/transmission =
time, and some switching time. During the switching time the USRP does not =
need to receive or transmit (it can, but the data doesn't matter). I assume=
 packets arrive in batches, and are all scheduled as fast as possible once =
the batch arrives. After each batch is a long delay where I spin-lock to si=
mulate waiting for the next batch to arrive.


On the transmit side, I've shown that given an 80% duty cycle tx/switching,=
 and a batch of ten packets, I can schedule transmissions continuously with=
out problem on the order of 10s of microseconds (given on the order of mill=
iseconds initial latency between when the first batch arrives and the first=
 batch is transmitted). I want to replicate this level of granularity on th=
e receive side as well, but so far have been unsuccessful. I have however s=
et the USRP to streaming mode continuous and proven my host can receive con=
tinuously in packets of the same size as my fine grained scheduling and kee=
p up without error.


I have two main approaches I've tried, scheduling a bunch of packets in adv=
ance and calling recv and issue_stream_cmd alternately in a  single threade=
d loop, and creating separate loops for issue_stream_cmd and recv. For the =
multithreaded approach, I've gotten to a point where the first few thousand=
 packets are scheduled properly, but after that it falls behind. The recv t=
hread appears to keep up without issue, but I get late command errors back,=
 implying the issue_stream_cmd thread is the problem. I've listed some exam=
ple code below. Any advice on how to improve my issue_stream_cmd latency wo=
uld be greatly appreciated!


Thanks,

Richard


// Two threads: send a single command the size of a full batch then pause i=
n a
// loop; receive continuously (samples and done mode, atomic var to account=
 for max number
// of commands in each thread) See also: rxtest_cmds
double rxtest_datas(USRPTypes &usrpType)
{
    uhd::set_thread_priority_safe(THREAD_PRIORITY);

    // Atomic variable to synchronize start of recv() calls with start of
    // issue_stream_cmd() calls
    global_start =3D false;
    // Ensure we don't exceed the cmd FIFO depth (defined in USRP_constants=
)
    global_cmd_num =3D 0;

    // Struct with all the variables used in various rx tests
    rxtest_vars rx(usrpType);

    // Receive a full batch at a time
    rx.packets_to_recv =3D rx.packets_to_recv / rx.batch_size;

    // Launch thread to schedule USRP receives
    std::thread cmd_thread(rxtest_cmds, rx);

    // Buffer to receive into (include full batch in one buffer)
    std::vector<std::complex<int16_t>> buff(RX_BATCH_SAMPLES);
    int expected_samps =3D buff.size();

    // timeout used by recv function to collect samples
    double timeout =3D rx.initial_timeout;

    // Don't start until the other thread has posted its first scheduled re=
ceive
    while (global_start =3D=3D false)
    {
        // Spin while we wait to start.
    }

    for (int i =3D 0; i < rx.packets_to_recv; i++)
    {
        // Use shorter timeout if this isn't the first packet
        if (i > 0)
        {
            timeout =3D rx.batch_latency;
        }
        // Collect received samples from the USRP
        rx.sample_count =3D rx.streamer->recv(&buff.front(), buff.size(), r=
x.md, timeout);

        // Post that we took a command off the USRP
        if (global_cmd_num >=3D 1)
        {
            global_cmd_num--;
        }

        // Did we drop any samples on this slot?
        if (rx.sample_count !=3D expected_samps)
        {
            rx.slot_drops++;
        }

        // Account for the errors of this slot
        if (rx.md.error_code !=3D uhd::rx_metadata_t::ERROR_CODE_NONE)
        {
            rx.errors++;
            rx.estruct.incrementRxErrorCount(rx.md.error_code);
        }

#if COLLECT_MD
        rx.mdvec[i] =3D rx.md;
#endif
    } // end data collection

    printMD(rx, true);
    cmd_thread.join();
    return rx.batch_latency;
}


--_000_157921147555538318mitedu_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} --></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello,</p>
<p><br>
</p>
<p>I'm developing a&nbsp;UHD C&#43;&#43; application for testing the limits=
 of the scheduling granularity I can achieve using an X310 on my host syste=
m. I'm running a Linux box with dual Xeon gold processors and a 10 gigabit =
ethernet interface to my X310. The X310 is clocked
 to 100 MSPS. <br>
</p>
<p><br>
</p>
<p>The premise is to simulate a packet arriving and telling the USRP to tra=
nsmit or receive in the near future. Each packet has a reception/transmissi=
on time, and some switching time. During the switching time the USRP does n=
ot need to receive or transmit (it
 can, but the data doesn't matter). I assume packets arrive in batches, and=
 are all scheduled as fast as possible once the batch arrives. After each b=
atch is a long delay where I spin-lock to simulate waiting for the next bat=
ch to arrive.
<br>
</p>
<p><br>
</p>
<p>On the transmit side, I've shown that given an 80% duty cycle tx/switchi=
ng, and a batch of ten packets, I can schedule transmissions continuously w=
ithout problem on the order of 10s of microseconds (given on the order of m=
illiseconds initial latency between
 when the first batch arrives and the first batch is transmitted). I want t=
o replicate this level of granularity on the receive side as well, but so f=
ar have been unsuccessful. I have however set the USRP to streaming mode co=
ntinuous and proven my host can
 receive continuously in packets of the same size as my fine grained schedu=
ling and keep up without error.</p>
<p><br>
</p>
<p>I have two main approaches I've tried, scheduling a bunch of packets in =
advance and calling recv and issue_stream_cmd alternately in a &nbsp;single=
 threaded loop, and creating separate loops for issue_stream_cmd and recv. =
For the multithreaded approach, I've
 gotten to a point where the first few thousand packets are scheduled prope=
rly, but after that it falls behind. The recv thread appears to keep up wit=
hout issue, but I get late command errors back, implying the issue_stream_c=
md thread is the problem. I've listed
 some example code below. Any advice on how to improve my issue_stream_cmd =
latency would be greatly appreciated!</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Richard</p>
<p><br>
</p>
//&nbsp;Two&nbsp;threads:&nbsp;send&nbsp;a&nbsp;single&nbsp;command&nbsp;th=
e&nbsp;size&nbsp;of&nbsp;a&nbsp;full&nbsp;batch&nbsp;then&nbsp;pause&nbsp;i=
n&nbsp;a<br>
//&nbsp;loop;&nbsp;receive&nbsp;continuously&nbsp;(samples&nbsp;and&nbsp;do=
ne&nbsp;mode,&nbsp;atomic&nbsp;var&nbsp;to&nbsp;account&nbsp;for&nbsp;max&n=
bsp;number<br>
//&nbsp;of&nbsp;commands&nbsp;in&nbsp;each&nbsp;thread)&nbsp;See&nbsp;also:=
&nbsp;rxtest_cmds<br>
double&nbsp;rxtest_datas(USRPTypes&nbsp;&amp;usrpType)<br>
{<br>
&nbsp;&nbsp;&nbsp;&nbsp;uhd::set_thread_priority_safe(THREAD_PRIORITY);<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Atomic&nbsp;variable&nbsp;to&nbsp;synchroni=
ze&nbsp;start&nbsp;of&nbsp;recv()&nbsp;calls&nbsp;with&nbsp;start&nbsp;of<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;issue_stream_cmd()&nbsp;calls<br>
&nbsp;&nbsp;&nbsp;&nbsp;global_start&nbsp;=3D&nbsp;false;<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Ensure&nbsp;we&nbsp;don't&nbsp;exceed&nbsp;=
the&nbsp;cmd&nbsp;FIFO&nbsp;depth&nbsp;(defined&nbsp;in&nbsp;USRP_constants=
)<br>
&nbsp;&nbsp;&nbsp;&nbsp;global_cmd_num&nbsp;=3D&nbsp;0;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Struct&nbsp;with&nbsp;all&nbsp;the&nbsp;var=
iables&nbsp;used&nbsp;in&nbsp;various&nbsp;rx&nbsp;tests<br>
&nbsp;&nbsp;&nbsp;&nbsp;rxtest_vars&nbsp;rx(usrpType);<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Receive&nbsp;a&nbsp;full&nbsp;batch&nbsp;at=
&nbsp;a&nbsp;time<br>
&nbsp;&nbsp;&nbsp;&nbsp;rx.packets_to_recv&nbsp;=3D&nbsp;rx.packets_to_recv=
&nbsp;/&nbsp;rx.batch_size;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Launch&nbsp;thread&nbsp;to&nbsp;schedule&nb=
sp;USRP&nbsp;receives<br>
&nbsp;&nbsp;&nbsp;&nbsp;std::thread&nbsp;cmd_thread(rxtest_cmds,&nbsp;rx);<=
br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Buffer&nbsp;to&nbsp;receive&nbsp;into&nbsp;=
(include&nbsp;full&nbsp;batch&nbsp;in&nbsp;one&nbsp;buffer)<br>
&nbsp;&nbsp;&nbsp;&nbsp;std::vector&lt;std::complex&lt;int16_t&gt;&gt;&nbsp=
;buff(RX_BATCH_SAMPLES);<br>
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;expected_samps&nbsp;=3D&nbsp;buff.size();<=
br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;timeout&nbsp;used&nbsp;by&nbsp;recv&nbsp;fu=
nction&nbsp;to&nbsp;collect&nbsp;samples<br>
&nbsp;&nbsp;&nbsp;&nbsp;double&nbsp;timeout&nbsp;=3D&nbsp;rx.initial_timeou=
t;<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Don't&nbsp;start&nbsp;until&nbsp;the&nbsp;o=
ther&nbsp;thread&nbsp;has&nbsp;posted&nbsp;its&nbsp;first&nbsp;scheduled&nb=
sp;receive<br>
&nbsp;&nbsp;&nbsp;&nbsp;while&nbsp;(global_start&nbsp;=3D=3D&nbsp;false)<br=
>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Spin&nbsp;while&nbs=
p;we&nbsp;wait&nbsp;to&nbsp;start.<br>
&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;for&nbsp;(int&nbsp;i&nbsp;=3D&nbsp;0;&nbsp;i&nbsp;&=
lt;&nbsp;rx.packets_to_recv;&nbsp;i&#43;&#43;)<br>
&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Use&nbsp;shorter&nb=
sp;timeout&nbsp;if&nbsp;this&nbsp;isn't&nbsp;the&nbsp;first&nbsp;packet<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(i&nbsp;&gt;&nbsp;0=
)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tim=
eout&nbsp;=3D&nbsp;rx.batch_latency;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Collect&nbsp;receiv=
ed&nbsp;samples&nbsp;from&nbsp;the&nbsp;USRP<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rx.sample_count&nbsp;=3D&nb=
sp;rx.streamer-&gt;recv(&amp;buff.front(),&nbsp;buff.size(),&nbsp;rx.md,&nb=
sp;timeout);<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Post&nbsp;that&nbsp=
;we&nbsp;took&nbsp;a&nbsp;command&nbsp;off&nbsp;the&nbsp;USRP<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(global_cmd_num&nbs=
p;&gt;=3D&nbsp;1)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;glo=
bal_cmd_num--;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Did&nbsp;we&nbsp;dr=
op&nbsp;any&nbsp;samples&nbsp;on&nbsp;this&nbsp;slot?<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(rx.sample_count&nb=
sp;!=3D&nbsp;expected_samps)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rx.=
slot_drops&#43;&#43;;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Account&nbsp;for&nb=
sp;the&nbsp;errors&nbsp;of&nbsp;this&nbsp;slot<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(rx.md.error_code&n=
bsp;!=3D&nbsp;uhd::rx_metadata_t::ERROR_CODE_NONE)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rx.=
errors&#43;&#43;;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rx.=
estruct.incrementRxErrorCount(rx.md.error_code);<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
<br>
#if&nbsp;COLLECT_MD<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rx.mdvec[i]&nbsp;=3D&nbsp;r=
x.md;<br>
#endif<br>
&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;//&nbsp;end&nbsp;data&nbsp;collection<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;printMD(rx,&nbsp;true);<br>
&nbsp;&nbsp;&nbsp;&nbsp;cmd_thread.join();<br>
&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;rx.batch_latency;<br>
}
<p><br>
</p>
</body>
</html>

--_000_157921147555538318mitedu_--


--===============3041976039651684415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3041976039651684415==--

